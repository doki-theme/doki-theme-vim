

let s:colors = {
      \ "comments": { "gui": "#807571", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! maple_dark#GetColors()
  return s:colors
endfunction