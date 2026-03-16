letterscore = false;
soundwrong = -1;
soundright = -1;
feedback_text = "";
feedback_farbe = c_white;

fragenpool = [];
letzter_frage_index = -1;

fragenpool[0] = {
    frage : "Welche Farbe hat der Himmel bei gutem Wetter?",
    a : "Blau",
    b : "Grün",
    c : "Rot",
    korrekt : "A"
};

fragenpool[1] = {
    frage : "Wie viele Tage hat eine Woche?",
    a : "5",
    b : "7",
    c : "9",
    korrekt : "B"
};

fragenpool[2] = {
    frage : "Welches Tier miaut?",
    a : "Hund",
    b : "Katze",
    c : "Pferd",
    korrekt : "B"
};

fragenpool[3] = {
    frage : "Was ist 2 + 2?",
    a : "3",
    b : "4",
    c : "5",
    korrekt : "B"
};

var neuer_index = irandom(array_length(fragenpool) - 1);
letzter_frage_index = neuer_index;
frage_aktuell = fragenpool[neuer_index];