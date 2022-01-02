

let s:colors = {
      \ "comments": { "gui": "#B0C0FC", "cterm": "147", "cterm16": "1" },
      \ "stringColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" }
      \}

function! konata#GetColors()
  return s:colors
endfunction