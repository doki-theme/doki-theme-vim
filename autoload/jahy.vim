

let s:colors = {
      \ "comments": { "gui": "#816F93", "cterm": "96", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! jahy#GetColors()
  return s:colors
endfunction