

let s:colors = {
      \ "comments": { "gui": "#987fa5", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#85FFEF", "cterm": "123", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#C84EB8", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e88def", "cterm": "177", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FBFF90", "cterm": "228", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ef57bf", "cterm": "205", "cterm16": "1" },
      \ "keyColor": { "gui": "#9d8df6", "cterm": "141", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2b252b", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#e594bf", "cterm": "175", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ab7b9d", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#3B393A", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#42283e", "cterm": "237", "cterm16": "1" },
      \ "caretRow": { "gui": "#353139", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#342c34", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#353038", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#4C637A", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#7a546f", "cterm": "95", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#322634", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#a1e9ff", "cterm": "153", "cterm16": "1" }
      \}

function! ram#GetColors()
  return s:colors
endfunction