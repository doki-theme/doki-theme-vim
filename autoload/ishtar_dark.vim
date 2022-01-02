

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_dark#GetColors()
  return s:colors
endfunction