

let s:colors = {
      \ "comments": { "gui": "#5b574a", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#d776ae", "cterm": "175", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#95acbd", "cterm": "109", "cterm16": "1" }
      \}

function! hayase_nagatoro#GetColors()
  return s:colors
endfunction