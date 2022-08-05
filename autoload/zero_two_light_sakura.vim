

let s:colors = {
      \ "comments": { "gui": "#99717E", "cterm": "244", "cterm16": "1" },
      \ "constantColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#117aa6", "cterm": "31", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#109757", "cterm": "29", "cterm16": "1" },
      \ "classNameColor": { "gui": "#0F9497", "cterm": "30", "cterm16": "1" },
      \ "keywordColor": { "gui": "#5236B4", "cterm": "61", "cterm16": "1" },
      \ "keyColor": { "gui": "#A62210", "cterm": "124", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#ffe5ef", "cterm": "255", "cterm16": "1" },
      \ "accentColor": { "gui": "#A62210", "cterm": "124", "cterm16": "1" },
      \ "infoForeground": { "gui": "#42a373", "cterm": "71", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B69DA2", "cterm": "247", "cterm16": "1" },
      \ "diffModified": { "gui": "#9FE5FF", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#CBFFCE", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#ECDDE6", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f1e4f6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#ffdbe5", "cterm": "224", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#ffe6ee", "cterm": "255", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#BB9BB1", "cterm": "249", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f5f1f8", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#F1B0E7", "cterm": "218", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#c1e9d4", "cterm": "152", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#ffcfde", "cterm": "224", "cterm16": "1" },
      \ "stringColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" }
      \}

function! zero_two_light_sakura#GetColors()
  return s:colors
endfunction