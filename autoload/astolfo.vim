

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#a7a0d1", "cterm": "146", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e87bc3", "cterm": "175", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa554", "cterm": "215", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f5c9fc", "cterm": "225", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d776ae", "cterm": "175", "cterm16": "1" },
      \ "keyColor": { "gui": "#f6ebb7", "cterm": "223", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#181917", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d58d9c", "cterm": "175", "cterm16": "1" },
      \ "infoForeground": { "gui": "#957a4d", "cterm": "101", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "diffModified": { "gui": "#1A233D", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#142D14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#242424", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#201d1d", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#20221f", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1a1c19", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#8e856e", "cterm": "101", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1e201d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#753B78", "cterm": "243", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#501C1C", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#211D1E", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#cd5257", "cterm": "167", "cterm16": "1" }
      \}

function! astolfo#GetColors()
  return s:colors
endfunction