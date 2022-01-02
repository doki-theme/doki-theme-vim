

let s:colors = {
      \ "comments": { "gui": "#7d6a7d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#DC872E", "cterm": "172", "cterm16": "1" }
      \}

function! natsuki_light#GetColors()
  return s:colors
endfunction