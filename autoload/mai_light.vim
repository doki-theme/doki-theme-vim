

let s:colors = {
      \ "comments": { "gui": "#64757d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#4C5ED6", "cterm": "62", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BA2BB2", "cterm": "127", "cterm16": "1" },
      \ "classNameColor": { "gui": "#4f5287", "cterm": "60", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "keyColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fff7f6", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#4f5287", "cterm": "60", "cterm16": "1" },
      \ "infoForeground": { "gui": "#6564ac", "cterm": "61", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#E9E3E7", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#eaecf6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#f1ecf2", "cterm": "255", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FAF2F1", "cterm": "255", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f5eef2", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#2d4d21", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#C3E8FF", "cterm": "153", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#b1b0d2", "cterm": "146", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f0e8e7", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#d27f2d", "cterm": "172", "cterm16": "1" }
      \}

function! mai_light#GetColors()
  return s:colors
endfunction