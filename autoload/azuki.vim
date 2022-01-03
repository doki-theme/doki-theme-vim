

let s:colors = {
      \ "comments": { "gui": "#807066", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#efacfc", "cterm": "219", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f585ab", "cterm": "211", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ffe845", "cterm": "221", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c4ff8d", "cterm": "192", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffad46", "cterm": "215", "cterm16": "1" },
      \ "keyColor": { "gui": "#96f3fd", "cterm": "123", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2d221f", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#e9b14e", "cterm": "179", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b0a17f", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#4c5352", "cterm": "239", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B3A47", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E3425", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#383234", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3b2b21", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#382a26", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2e221f", "cterm": "235", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6c635a", "cterm": "241", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#342723", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#542626", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#684e29", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3b2c27", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#e0f6bf", "cterm": "193", "cterm16": "1" }
      \}

function! azuki#GetColors()
  return s:colors
endfunction