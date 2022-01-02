

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#da832e", "cterm": "172", "cterm16": "1" }
      \}

function! monika_light#GetColors()
  return s:colors
endfunction