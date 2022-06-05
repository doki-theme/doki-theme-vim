

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#2925AC", "cterm": "19", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#7D2DD2", "cterm": "92", "cterm16": "1" },
      \ "classNameColor": { "gui": "#cb70a5", "cterm": "169", "cterm16": "1" },
      \ "keywordColor": { "gui": "#90468c", "cterm": "96", "cterm16": "1" },
      \ "keyColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fbf0ff", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#82357d", "cterm": "96", "cterm16": "1" },
      \ "infoForeground": { "gui": "#8864ac", "cterm": "97", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#E9E3E7", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f2eaf6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#f1dcf7", "cterm": "225", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#fbf0ff", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f5e4fa", "cterm": "225", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#78c5ad", "cterm": "115", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#c7a0d2", "cterm": "182", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f2e5f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#0CA87E", "cterm": "36", "cterm16": "1" }
      \}

function! emilia_light#GetColors()
  return s:colors
endfunction