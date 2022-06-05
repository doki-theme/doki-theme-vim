

let s:colors = {
      \ "comments": { "gui": "#A75454", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#33618E", "cterm": "60", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#2F25BD", "cterm": "19", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BF1010", "cterm": "124", "cterm16": "1" },
      \ "classNameColor": { "gui": "#781F1F", "cterm": "88", "cterm16": "1" },
      \ "keywordColor": { "gui": "#A7158F", "cterm": "126", "cterm16": "1" },
      \ "keyColor": { "gui": "#64378B", "cterm": "60", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff000f", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#fa8a7e", "cterm": "210", "cterm16": "1" },
      \ "accentColor": { "gui": "#4f52c4", "cterm": "62", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b1483d", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A55F5D", "cterm": "131", "cterm16": "1" },
      \ "diffModified": { "gui": "#E37C98", "cterm": "174", "cterm16": "1" },
      \ "diffInserted": { "gui": "#f79669", "cterm": "209", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#e97b6f", "cterm": "173", "cterm16": "1" },
      \ "codeBlock": { "gui": "#ee7f87", "cterm": "210", "cterm16": "1" },
      \ "caretRow": { "gui": "#FF8F83", "cterm": "210", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FC887A", "cterm": "210", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#C2438E", "cterm": "132", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#168290", "cterm": "30", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#1D7438", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#D44646", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#9E631E", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#A1473B", "cterm": "131", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#fe8c7f", "cterm": "210", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#FF8EDB", "cterm": "212", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#f4665a", "cterm": "203", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#FA7C6B", "cterm": "209", "cterm16": "1" },
      \ "stringColor": { "gui": "#344EAD", "cterm": "61", "cterm16": "1" }
      \}

function! nakano_itsuki#GetColors()
  return s:colors
endfunction