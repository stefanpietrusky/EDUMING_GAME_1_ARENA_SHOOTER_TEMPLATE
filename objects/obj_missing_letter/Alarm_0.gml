var neuer_index = irandom(array_length(fragenpool) - 1);

if (array_length(fragenpool) > 1) {
    while (neuer_index == letzter_frage_index) {
        neuer_index = irandom(array_length(fragenpool) - 1);
    }
}

letzter_frage_index = neuer_index;
frage_aktuell = fragenpool[neuer_index];

letterscore = false;
soundwrong = -1;
soundright = -1;
feedback_text = "";
feedback_farbe = c_white;