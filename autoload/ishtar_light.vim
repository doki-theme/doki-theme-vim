

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
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_light#GetColors()
  return s:colors
endfunction