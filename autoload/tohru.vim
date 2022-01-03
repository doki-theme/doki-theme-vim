

let s:colors = {
      \ "comments": { "gui": "#908250", "cterm": "101", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#1a821b", "cterm": "28", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#aa2537", "cterm": "125", "cterm16": "1" },
      \ "classNameColor": { "gui": "#0E8D61", "cterm": "29", "cterm16": "1" },
      \ "keywordColor": { "gui": "#A74503", "cterm": "130", "cterm16": "1" },
      \ "keyColor": { "gui": "#176B82", "cterm": "24", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#f6d988", "cterm": "222", "cterm16": "1" },
      \ "accentColor": { "gui": "#d23c4b", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#763530", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#afaf77", "cterm": "144", "cterm16": "1" },
      \ "diffModified": { "gui": "#ecd19e", "cterm": "223", "cterm16": "1" },
      \ "diffInserted": { "gui": "#cfe287", "cterm": "186", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#edd289", "cterm": "222", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f9da7d", "cterm": "222", "cterm16": "1" },
      \ "caretRow": { "gui": "#ffe797", "cterm": "222", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#693434", "cterm": "237", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#ffe494", "cterm": "222", "cterm16": "1" },
      \ "searchForeground": { "gui": "#2f1206", "cterm": "233", "cterm16": "1" },
      \ "searchBackground": { "gui": "#FF6684", "cterm": "204", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#652009", "cterm": "52", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#ec9e74", "cterm": "216", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#ffe692", "cterm": "222", "cterm16": "1" },
      \ "stringColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" }
      \}

function! tohru#GetColors()
  return s:colors
endfunction