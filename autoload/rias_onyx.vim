

let s:colors = {
      \ "comments": { "gui": "#694f4d", "cterm": "239", "cterm16": "1" },
      \ "constantColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! rias_onyx#GetColors()
  return s:colors
endfunction