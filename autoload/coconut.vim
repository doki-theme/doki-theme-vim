

let s:colors = {
      \ "comments": { "gui": "#6f6880", "cterm": "242", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! coconut#GetColors()
  return s:colors
endfunction