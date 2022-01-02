

let s:colors = {
      \ "comments": { "gui": "#7384d4", "cterm": "68", "cterm16": "1" },
      \ "stringColor": { "gui": "#b3a9ff", "cterm": "147", "cterm16": "1" }
      \}

function! cinnamon#GetColors()
  return s:colors
endfunction