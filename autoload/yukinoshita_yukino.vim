

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#84D0FF", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#9DACF6", "cterm": "147", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#ead979", "cterm": "186", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#282a2f", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#2d6382", "cterm": "24", "cterm16": "1" },
      \ "infoForeground": { "gui": "#456186", "cterm": "60", "cterm16": "1" },
      \ "unusedColor": { "gui": "#5c5c63", "cterm": "59", "cterm16": "1" },
      \ "diffModified": { "gui": "#0E2539", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#132D14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2A2929", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#25272c", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#23252a", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1f2126", "cterm": "235", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#545e6d", "cterm": "59", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#212328", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#4B262A", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#2d3b55", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#25272d", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! yukinoshita_yukino#GetColors()
  return s:colors
endfunction