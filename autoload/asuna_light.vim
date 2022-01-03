

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#212121", "cterm": "234", "cterm16": "1" },
      \ "classNameColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" },
      \ "keyColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" }
      \}

function! asuna_light#GetColors()
  return s:colors
endfunction