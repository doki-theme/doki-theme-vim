

let s:colors = {
      \ "comments": { "gui": "#7790AF", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#167BBA", "cterm": "31", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#2e7093", "cterm": "24", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EF5D99", "cterm": "204", "cterm16": "1" },
      \ "keywordColor": { "gui": "#3F77EF", "cterm": "69", "cterm16": "1" },
      \ "keyColor": { "gui": "#9f69dc", "cterm": "134", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#f0faff", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#00bcd4", "cterm": "38", "cterm16": "1" },
      \ "infoForeground": { "gui": "#64a6ac", "cterm": "73", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EBEBEB", "cterm": "255", "cterm16": "1" },
      \ "codeBlock": { "gui": "#eaf0f6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#dceef7", "cterm": "255", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#f0faff", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#e4f3fa", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#BDB9F1", "cterm": "147", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#a9c8ec", "cterm": "153", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#e9f5fd", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#E59584", "cterm": "174", "cterm16": "1" }
      \}

function! sayori_light#GetColors()
  return s:colors
endfunction