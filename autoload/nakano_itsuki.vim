

let s:colors = {
      \ "comments": { "gui": "#BF6B6B", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#33618E", "cterm": "60", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#22119E", "cterm": "19", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BF1010", "cterm": "124", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8D2D1B", "cterm": "88", "cterm16": "1" },
      \ "keywordColor": { "gui": "#B6159D", "cterm": "127", "cterm16": "1" },
      \ "keyColor": { "gui": "#602C93", "cterm": "54", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff000f", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#fcc1c1", "cterm": "217", "cterm16": "1" },
      \ "accentColor": { "gui": "#4f52c4", "cterm": "62", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b1483d", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A37674", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#dbabd4", "cterm": "182", "cterm16": "1" },
      \ "diffInserted": { "gui": "#dcc1a2", "cterm": "181", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#e3aeae", "cterm": "181", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f9aaac", "cterm": "217", "cterm16": "1" },
      \ "caretRow": { "gui": "#ffb1b1", "cterm": "217", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FFBEBE", "cterm": "217", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#C2438E", "cterm": "132", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#168290", "cterm": "30", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#1D7438", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#D44646", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#9E631E", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#D07E72", "cterm": "173", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#ffb6b6", "cterm": "217", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#FF8EDB", "cterm": "212", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#f4665a", "cterm": "203", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#ffb3b3", "cterm": "217", "cterm16": "1" },
      \ "stringColor": { "gui": "#2D4DC2", "cterm": "25", "cterm16": "1" }
      \}

function! nakano_itsuki#GetColors()
  return s:colors
endfunction