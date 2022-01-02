

let s:colors = {
      \ "comments": { "gui": "#7d62a4", "cterm": "97", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#e09cf3", "cterm": "183", "cterm16": "1" }
      \}

function! maika#GetColors()
  return s:colors
endfunction