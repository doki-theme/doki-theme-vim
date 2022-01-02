

let s:colors = {
      \ "comments": { "gui": "#786598", "cterm": "96", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#FAF7BA", "cterm": "229", "cterm16": "1" }
      \}

function! katsuragi_misato#GetColors()
  return s:colors
endfunction