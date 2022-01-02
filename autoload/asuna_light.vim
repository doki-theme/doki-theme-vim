

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" }
      \}

function! asuna_light#GetColors()
  return s:colors
endfunction