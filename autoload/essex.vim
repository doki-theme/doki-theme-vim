

let s:colors = {
      \ "comments": { "gui": "#6387AF", "cterm": "67", "cterm16": "1" },
      \ "constantColor": { "gui": "#78DBEF", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! essex#GetColors()
  return s:colors
endfunction