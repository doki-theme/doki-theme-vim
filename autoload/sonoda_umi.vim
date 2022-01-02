

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFF6B3", "cterm": "229", "cterm16": "1" }
      \}

function! sonoda_umi#GetColors()
  return s:colors
endfunction