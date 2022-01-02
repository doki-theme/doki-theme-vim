

let s:colors = {
      \ "comments": { "gui": "#6C888D", "cterm": "66", "cterm16": "1" },
      \ "stringColor": { "gui": "#fffeaf", "cterm": "229", "cterm16": "1" }
      \}

function! nakano_miku#GetColors()
  return s:colors
endfunction