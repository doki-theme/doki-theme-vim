

let s:colors = {
      \ "comments": { "gui": "#5A4C63", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_nino#GetColors()
  return s:colors
endfunction