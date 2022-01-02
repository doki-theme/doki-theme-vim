

let s:colors = {
      \ "comments": { "gui": "#687380", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! shima_rin#GetColors()
  return s:colors
endfunction