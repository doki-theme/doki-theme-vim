

let s:colors = {
      \ "comments": { "gui": "{{comments}}", "cterm": "{{comments$x256}}", "cterm16": "1" },
      \ "constantColor": { "gui": "{{constantColor}}", "cterm": "{{constantColor$x256}}", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "{{foregroundColorEditor}}", "cterm": "{{foregroundColorEditor$x256}}", "cterm16": "1" },
      \ "stringColor": { "gui": "{{stringColor}}", "cterm": "{{stringColor$x256}}", "cterm16": "1" }
      \}

function! {{themeName}}#GetColors()
  return s:colors
endfunction