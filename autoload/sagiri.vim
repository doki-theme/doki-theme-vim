

let s:colors = {
      \ "comments": { "gui": "#507F78", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#82BAFF", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#53dac7", "cterm": "80", "cterm16": "1" }
      \}

function! sagiri#GetColors()
  return s:colors
endfunction