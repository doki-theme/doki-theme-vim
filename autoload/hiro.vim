

let s:colors = {
      \ "comments": { "gui": "#5E6C84", "cterm": "60", "cterm16": "1" },
      \ "constantColor": { "gui": "#83F57F", "cterm": "120", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#AE9AFF", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EA517A", "cterm": "168", "cterm16": "1" },
      \ "keywordColor": { "gui": "#6a96e9", "cterm": "68", "cterm16": "1" },
      \ "keyColor": { "gui": "#89CCEC", "cterm": "117", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff0000", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#16171a", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#3877d1", "cterm": "68", "cterm16": "1" },
      \ "infoForeground": { "gui": "#8ad0bf", "cterm": "115", "cterm16": "1" },
      \ "unusedColor": { "gui": "#5C5E6C", "cterm": "59", "cterm16": "1" },
      \ "diffModified": { "gui": "#0E2539", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#132D14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2A2929", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#352836", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#272a2f", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#16171A", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#4F5D76", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#202227", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#841B27", "cterm": "88", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#1d4a88", "cterm": "24", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#25272d", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDB8EB", "cterm": "218", "cterm16": "1" }
      \}

function! hiro#GetColors()
  return s:colors
endfunction