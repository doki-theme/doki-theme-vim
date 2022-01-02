

let s:colors = {
      \ "comments": { "gui": "#735253", "cterm": "240", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! jabami_yumeko#GetColors()
  return s:colors
endfunction