

let s:colors = {
      \ "comments": { "gui": "#6A8882", "cterm": "66", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! kirino#GetColors()
  return s:colors
endfunction