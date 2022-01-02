

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_light#GetColors()
  return s:colors
endfunction