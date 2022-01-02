

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#131313", "cterm": "233", "cterm16": "1" }
      \}

function! zero_two_light#GetColors()
  return s:colors
endfunction