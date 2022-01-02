

let s:colors = {
      \ "comments": { "gui": "#807066", "cterm": "242", "cterm16": "1" },
      \ "stringColor": { "gui": "#e0f6bf", "cterm": "193", "cterm16": "1" }
      \}

function! azuki#GetColors()
  return s:colors
endfunction