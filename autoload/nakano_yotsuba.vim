

let s:colors = {
      \ "comments": { "gui": "#6C524E", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_yotsuba#GetColors()
  return s:colors
endfunction