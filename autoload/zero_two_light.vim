

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "classNameColor": { "gui": "#117aa6", "cterm": "31", "cterm16": "1" },
      \ "keywordColor": { "gui": "#0da661", "cterm": "35", "cterm16": "1" },
      \ "keyColor": { "gui": "#A62210", "cterm": "124", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#131313", "cterm": "233", "cterm16": "1" }
      \}

function! zero_two_light#GetColors()
  return s:colors
endfunction