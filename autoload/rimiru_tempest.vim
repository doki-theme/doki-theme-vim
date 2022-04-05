

let s:colors = {
      \ "comments": { "gui": "#716B78", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#9CA2FF", "cterm": "147", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#77BBFF", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#FDEA25", "cterm": "220", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFA38F", "cterm": "216", "cterm16": "1" },
      \ "keywordColor": { "gui": "#5FFF9F", "cterm": "85", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF96FD", "cterm": "213", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#211c22", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d7cf8b", "cterm": "186", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b0a17f", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#1F4966", "cterm": "23", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E3425", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#323239", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2d3d55", "cterm": "237", "cterm16": "1" },
      \ "caretRow": { "gui": "#302931", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1c171d", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#675a6c", "cterm": "241", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#282229", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#195A80", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#29466c", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#302931", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#77C2FF", "cterm": "111", "cterm16": "1" }
      \}

function! rimiru_tempest#GetColors()
  return s:colors
endfunction