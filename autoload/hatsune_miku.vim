

let s:colors = {
      \ "comments": { "gui": "#67807b", "cterm": "66", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! hatsune_miku#GetColors()
  return s:colors
endfunction