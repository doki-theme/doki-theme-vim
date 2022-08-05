

let s:colors = {
      \ "comments": { "gui": "#71688D", "cterm": "60", "cterm16": "1" },
      \ "constantColor": { "gui": "#9CA2FF", "cterm": "147", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8078EE", "cterm": "105", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b68cfd", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#5FFF9F", "cterm": "85", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ec377e", "cterm": "204", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF96FD", "cterm": "213", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#0f071a", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#c93939", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#5d89c2", "cterm": "67", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#173558", "cterm": "236", "cterm16": "1" },
      \ "diffInserted": { "gui": "#0F2F1D", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2A2638", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#15163a", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#23214b", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#150b24", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5F4E65", "cterm": "59", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d183b", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#801925", "cterm": "88", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#29466c", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#271a3d", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#7EACF8", "cterm": "111", "cterm16": "1" }
      \}

function! hiro_x_zero_two#GetColors()
  return s:colors
endfunction