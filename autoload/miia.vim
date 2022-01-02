

let s:colors = {
      \ "comments": { "gui": "#a47272", "cterm": "131", "cterm16": "1" },
      \ "stringColor": { "gui": "#e2d9bd", "cterm": "187", "cterm16": "1" }
      \}

function! miia#GetColors()
  return s:colors
endfunction