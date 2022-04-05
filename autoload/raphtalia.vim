

let s:colors = {
      \ "comments": { "gui": "#807571", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#8097e3", "cterm": "104", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#d75e88", "cterm": "168", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#4fe1a9", "cterm": "79", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keywordColor": { "gui": "#f19992", "cterm": "210", "cterm16": "1" },
      \ "keyColor": { "gui": "#fd9144", "cterm": "209", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#1c140f", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#8a3c3d", "cterm": "95", "cterm16": "1" },
      \ "infoForeground": { "gui": "#bfb38c", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#606867", "cterm": "241", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B3A47", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#152F1A", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#282621", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2c1e12", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#2b2016", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1e1710", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6c5f55", "cterm": "59", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#261c14", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2A5F1E", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5c3915", "cterm": "58", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2d2318", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDC78C", "cterm": "222", "cterm16": "1" }
      \}

function! raphtalia#GetColors()
  return s:colors
endfunction