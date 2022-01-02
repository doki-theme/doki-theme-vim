

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#a7a0d1", "cterm": "146", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#cd5257", "cterm": "167", "cterm16": "1" }
      \}

function! astolfo#GetColors()
  return s:colors
endfunction