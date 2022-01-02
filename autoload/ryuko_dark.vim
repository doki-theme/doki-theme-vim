

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "stringColor": { "gui": "#efa554", "cterm": "215", "cterm16": "1" }
      \}

function! ryuko_dark#GetColors()
  return s:colors
endfunction