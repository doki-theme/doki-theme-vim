

let s:colors = {
      \ "comments": { "gui": "#a06aa4", "cterm": "133", "cterm16": "1" },
      \ "constantColor": { "gui": "#34a7d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! gasai_yuno#GetColors()
  return s:colors
endfunction