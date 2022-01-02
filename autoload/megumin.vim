

let s:colors = {
      \ "comments": { "gui": "#726868", "cterm": "242", "cterm16": "1" },
      \ "stringColor": { "gui": "#ffd866", "cterm": "221", "cterm16": "1" }
      \}

function! megumin#GetColors()
  return s:colors
endfunction