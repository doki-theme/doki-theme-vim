

let s:colors = {
      \ "comments": { "gui": "#64757d", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#d27f2d", "cterm": "172", "cterm16": "1" }
      \}

function! mai_light#GetColors()
  return s:colors
endfunction