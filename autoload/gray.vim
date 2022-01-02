

let s:colors = {
      \ "comments": { "gui": "#6b7b80", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! gray#GetColors()
  return s:colors
endfunction