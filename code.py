import os
import yaml  
from datetime import datetime

project_path = r""
objects_dir  = os.path.join(project_path, "Objects")
output_file  = os.path.join(project_path, "all_objects_combined.gml")

obj_events = {}
for root, _, files in os.walk(objects_dir):
    rel = os.path.relpath(root, objects_dir).split(os.sep)
    if not rel or rel[0] in (".", ""):
        continue
    obj = rel[0]
    for fname in files:
        ext = os.path.splitext(fname)[1].lower()
        if ext not in (".gml", ".yml", ".yaml"):
            continue 
        full = os.path.join(root, fname)
        base = os.path.splitext(fname)[0]
        event = base.split("_", 1)[0]
        obj_events.setdefault(obj, {}) \
                  .setdefault(event, []) \
                  .append((full, ext))

with open(output_file, "w", encoding="utf-8") as out:
    out.write("// ======================================================\n")
    out.write("// Combined GML code of all objects\n")
    out.write(f"// Generated on: {datetime.now():%Y-%m-%d %H:%M:%S}\n")
    out.write("// ======================================================\n\n")

    for obj in sorted(obj_events):
        out.write(f"// === Object: {obj} ===\n\n")
        for event in sorted(obj_events[obj]):
            out.write(f"// --- Event: {event} ---\n")
            for path, ext in sorted(obj_events[obj][event], key=lambda x: x[0]):
                out.write(f"// Files: {os.path.basename(path)}\n")
                if ext == ".gml":
                    with open(path, "r", encoding="utf-8") as f:
                        out.write(f.read().rstrip() + "\n\n")
                else:
                    with open(path, "r", encoding="utf-8") as f:
                        data = yaml.safe_load(f)
                    code = data.get("gml", "")
                    out.write(code.rstrip() + "\n\n")
        out.write("\n")

    out.write("// === End of all objects ===\n")

print("✔ Done! Results in:", output_file)