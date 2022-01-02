

let s:colors = {
      \ "comments": { "gui": "#9277a7", "cterm": "103", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDEFA2", "cterm": "229", "cterm16": "1" }
      \}

function! emilia_dark#GetColors()
  return s:colors
endfunction