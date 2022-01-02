

let s:colors = {
      \ "comments": { "gui": "#507F78", "cterm": "66", "cterm16": "1" },
      \ "stringColor": { "gui": "#53dac7", "cterm": "80", "cterm16": "1" }
      \}

function! sagiri#GetColors()
  return s:colors
endfunction