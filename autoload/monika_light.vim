

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#da832e", "cterm": "172", "cterm16": "1" }
      \}

function! monika_light#GetColors()
  return s:colors
endfunction