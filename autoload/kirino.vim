

let s:colors = {
      \ "comments": { "gui": "#6A8882", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! kirino#GetColors()
  return s:colors
endfunction