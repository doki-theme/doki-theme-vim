

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#5236B4", "cterm": "61", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "classNameColor": { "gui": "#117aa6", "cterm": "31", "cterm16": "1" },
      \ "keywordColor": { "gui": "#0da661", "cterm": "35", "cterm16": "1" },
      \ "keyColor": { "gui": "#A62210", "cterm": "124", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fafafa", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#A62210", "cterm": "124", "cterm16": "1" },
      \ "infoForeground": { "gui": "#5282a2", "cterm": "67", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EBEBEB", "cterm": "255", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#eef9fe", "cterm": "231", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#fcfcfc", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#B4E9DF", "cterm": "152", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#e9b4b8", "cterm": "181", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#0EAAAF", "cterm": "37", "cterm16": "1" }
      \}

function! zero_two_light_lily#GetColors()
  return s:colors
endfunction