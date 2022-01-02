

let s:colors = {
      \ "comments": { "gui": "#4c8484", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#69e0f5", "cterm": "81", "cterm16": "1" }
      \}

function! tohsaka_rin#GetColors()
  return s:colors
endfunction