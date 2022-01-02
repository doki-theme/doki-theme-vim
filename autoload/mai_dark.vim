

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "stringColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" }
      \}

function! mai_dark#GetColors()
  return s:colors
endfunction