

let s:colors = {
      \ "comments": { "gui": "#686a80", "cterm": "242", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! vanilla#GetColors()
  return s:colors
endfunction