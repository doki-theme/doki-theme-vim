

let s:colors = {
      \ "comments": { "gui": "#987fa5", "cterm": "103", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! ram#GetColors()
  return s:colors
endfunction