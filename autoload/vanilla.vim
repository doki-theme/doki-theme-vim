

let s:colors = {
      \ "comments": { "gui": "#686a80", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#5ddeda", "cterm": "80", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9bf8ff", "cterm": "123", "cterm16": "1" },
      \ "classNameColor": { "gui": "#9d8df6", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#6a96e9", "cterm": "68", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#292a3a", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#9debff", "cterm": "153", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b0a17f", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#243558", "cterm": "236", "cterm16": "1" },
      \ "diffInserted": { "gui": "#233D2A", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#363842", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2f3354", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#333446", "cterm": "237", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2b2c3d", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5a5e6c", "cterm": "59", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#303142", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3A6875", "cterm": "242", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#374872", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#323449", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! vanilla#GetColors()
  return s:colors
endfunction