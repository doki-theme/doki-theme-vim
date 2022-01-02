

let s:colors = {
      \ "comments": { "gui": "#a06aa4", "cterm": "133", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! gasai_yuno#GetColors()
  return s:colors
endfunction