

let s:colors = {
      \ "comments": { "gui": "#6f6880", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#50b5d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! coconut#GetColors()
  return s:colors
endfunction