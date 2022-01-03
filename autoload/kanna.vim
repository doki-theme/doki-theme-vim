

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#69ecf5", "cterm": "87", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6AADFF", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d285fd", "cterm": "177", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1a1526", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#46459e", "cterm": "61", "cterm16": "1" },
      \ "infoForeground": { "gui": "#9d79c2", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#192f24", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2D2A36", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1d152d", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#231a31", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1a1426", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6a6679", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1f182d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#665DA6", "cterm": "61", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#492744", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#251832", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FAF7BA", "cterm": "229", "cterm16": "1" }
      \}

function! kanna#GetColors()
  return s:colors
endfunction