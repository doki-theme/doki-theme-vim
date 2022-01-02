

let s:colors = {
      \ "comments": { "gui": "#908250", "cterm": "101", "cterm16": "1" },
      \ "stringColor": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" }
      \}

function! maple_light#GetColors()
  return s:colors
endfunction