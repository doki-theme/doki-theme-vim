

let s:colors = {
      \ "comments": { "gui": "#7384d4", "cterm": "68", "cterm16": "1" },
      \ "constantColor": { "gui": "#8bc1f8", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#b3a9ff", "cterm": "147", "cterm16": "1" }
      \}

function! cinnamon#GetColors()
  return s:colors
endfunction