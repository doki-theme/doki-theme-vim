

let s:colors = {
      \ "comments": { "gui": "#807571", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec93a1", "cterm": "211", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! maple_dark#GetColors()
  return s:colors
endfunction