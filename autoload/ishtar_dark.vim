

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f5c443", "cterm": "221", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7C7C82", "cterm": "244", "cterm16": "1" },
      \ "keywordColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keyColor": { "gui": "#357fbf", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#0d0b0c", "cterm": "232", "cterm16": "1" },
      \ "accentColor": { "gui": "#f5c443", "cterm": "221", "cterm16": "1" },
      \ "infoForeground": { "gui": "#866e45", "cterm": "95", "cterm16": "1" },
      \ "unusedColor": { "gui": "#504848", "cterm": "239", "cterm16": "1" },
      \ "diffModified": { "gui": "#0E2539", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#132D14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#21211E", "cterm": "234", "cterm16": "1" },
      \ "codeBlock": { "gui": "#191718", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#1A1913", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#110F10", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6c6d5b", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#161512", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#4B1212", "cterm": "52", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#553919", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#191718", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_dark#GetColors()
  return s:colors
endfunction