

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#9D868D", "cterm": "138", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#2e7093", "cterm": "24", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF3889", "cterm": "204", "cterm16": "1" },
      \ "keywordColor": { "gui": "#9D868D", "cterm": "138", "cterm16": "1" },
      \ "keyColor": { "gui": "#3F77EF", "cterm": "69", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#DC872E", "cterm": "172", "cterm16": "1" }
      \}

function! sayori_light#GetColors()
  return s:colors
endfunction