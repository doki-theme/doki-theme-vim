

let s:colors = {
      \ "comments": { "gui": "#A26673", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#DC3A3A", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f16e7f", "cterm": "204", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "keywordColor": { "gui": "#F63E54", "cterm": "203", "cterm16": "1" },
      \ "keyColor": { "gui": "#77EA6E", "cterm": "113", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff1212", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#37131b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#239324", "cterm": "28", "cterm16": "1" },
      \ "infoForeground": { "gui": "#56b36f", "cterm": "71", "cterm16": "1" },
      \ "unusedColor": { "gui": "#674d54", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#164150", "cterm": "238", "cterm16": "1" },
      \ "diffInserted": { "gui": "#113B1B", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#263631", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#342422", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#4f1b27", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#3a141d", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6d816c", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#471823", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#710E1B", "cterm": "52", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#1f422d", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#491925", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#C2FFAA", "cterm": "157", "cterm16": "1" }
      \}

function! christmas_chocola#GetColors()
  return s:colors
endfunction