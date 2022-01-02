

let s:colors = {
      \ "comments": { "gui": "#72A174", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDBAAE", "cterm": "217", "cterm16": "1" }
      \}

function! christmas_chocola#GetColors()
  return s:colors
endfunction