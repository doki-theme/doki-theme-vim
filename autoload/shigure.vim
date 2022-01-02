

let s:colors = {
      \ "comments": { "gui": "#2E2E57", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" }
      \}

function! shigure#GetColors()
  return s:colors
endfunction