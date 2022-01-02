

let s:colors = {
      \ "comments": { "gui": "#9C67AF", "cterm": "133", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! natsuki_dark#GetColors()
  return s:colors
endfunction