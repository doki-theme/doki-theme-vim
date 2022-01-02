

let s:colors = {
      \ "comments": { "gui": "{{comments}}", "cterm": "{{comments$x256}}", "cterm16": "1" },
      \ "stringColor": { "gui": "{{stringColor}}", "cterm": "{{stringColor$x256}}", "cterm16": "1" }
      \}

function! {{themeName}}#GetColors()
  return s:colors
endfunction