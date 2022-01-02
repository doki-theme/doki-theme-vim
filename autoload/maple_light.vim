

let s:colors = {
      \ "comments": { "gui": "#908250", "cterm": "101", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "stringColor": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" }
      \}

function! maple_light#GetColors()
  return s:colors
endfunction