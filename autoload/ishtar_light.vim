

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9c3123", "cterm": "130", "cterm16": "1" },
      \ "classNameColor": { "gui": "#131f3b", "cterm": "234", "cterm16": "1" },
      \ "keywordColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keyColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fffefb", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#f5a821", "cterm": "214", "cterm16": "1" },
      \ "infoForeground": { "gui": "#5078a5", "cterm": "67", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "caretRow": { "gui": "#fffaed", "cterm": "231", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#fffcf3", "cterm": "231", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#FFC7C7", "cterm": "224", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#fff5c7", "cterm": "230", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_light#GetColors()
  return s:colors
endfunction