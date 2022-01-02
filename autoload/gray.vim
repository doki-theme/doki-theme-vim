

let s:colors = {
      \ "comments": { "gui": "#6b7b80", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! gray#GetColors()
  return s:colors
endfunction