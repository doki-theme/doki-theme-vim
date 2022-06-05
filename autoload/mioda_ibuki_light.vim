

let s:colors = {
      \ "comments": { "gui": "#7d6a7d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#2F6AAD", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#3A8CB8", "cterm": "67", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#DA46A7", "cterm": "169", "cterm16": "1" },
      \ "classNameColor": { "gui": "#cb70a5", "cterm": "169", "cterm16": "1" },
      \ "keywordColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "keyColor": { "gui": "#4174b3", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#ffeefd", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#DA46A7", "cterm": "169", "cterm16": "1" },
      \ "infoForeground": { "gui": "#5ca4d4", "cterm": "74", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EFE2E9", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#ecf2f8", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#f7dcf3", "cterm": "225", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#ffeefd", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#fae3f7", "cterm": "225", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#EA8EFF", "cterm": "177", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#8EDBFF", "cterm": "117", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f9e8f7", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#3193D7", "cterm": "68", "cterm16": "1" }
      \}

function! mioda_ibuki_light#GetColors()
  return s:colors
endfunction