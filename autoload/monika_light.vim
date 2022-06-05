

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#1E8225", "cterm": "28", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#20AF6F", "cterm": "35", "cterm16": "1" },
      \ "classNameColor": { "gui": "#9A9E20", "cterm": "106", "cterm16": "1" },
      \ "keywordColor": { "gui": "#2BBA37", "cterm": "35", "cterm16": "1" },
      \ "keyColor": { "gui": "#6D71DC", "cterm": "62", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#f2fff0", "cterm": "255", "cterm16": "1" },
      \ "accentColor": { "gui": "#388E3C", "cterm": "65", "cterm16": "1" },
      \ "infoForeground": { "gui": "#3b753d", "cterm": "237", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#DFEFE6", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#eaf6eb", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#dcf7e0", "cterm": "194", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#f2fff0", "cterm": "255", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#e5fae6", "cterm": "254", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#B9F4FF", "cterm": "159", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#a9ecac", "cterm": "157", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#def6f3", "cterm": "195", "cterm16": "1" },
      \ "stringColor": { "gui": "#da832e", "cterm": "172", "cterm16": "1" }
      \}

function! monika_light#GetColors()
  return s:colors
endfunction