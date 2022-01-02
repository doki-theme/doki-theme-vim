

let s:colors = {
      \ "comments": { "gui": "#596570", "cterm": "241", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! satsuki_dark#GetColors()
  return s:colors
endfunction