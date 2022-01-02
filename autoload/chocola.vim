

let s:colors = {
      \ "comments": { "gui": "#806872", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! chocola#GetColors()
  return s:colors
endfunction