

let s:colors = {
      \ "comments": { "gui": "#4E6B4C", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! monika_dark#GetColors()
  return s:colors
endfunction