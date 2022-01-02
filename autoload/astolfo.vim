

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "stringColor": { "gui": "#cd5257", "cterm": "167", "cterm16": "1" }
      \}

function! astolfo#GetColors()
  return s:colors
endfunction