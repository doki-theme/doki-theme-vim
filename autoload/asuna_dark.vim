

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#f5cc5a", "cterm": "221", "cterm16": "1" }
      \}

function! asuna_dark#GetColors()
  return s:colors
endfunction