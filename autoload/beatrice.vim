

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7B6970", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#5c84da", "cterm": "68", "cterm16": "1" },
      \ "classNameColor": { "gui": "#df81b8", "cterm": "175", "cterm16": "1" },
      \ "keywordColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "keyColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#DC872E", "cterm": "172", "cterm16": "1" }
      \}

function! beatrice#GetColors()
  return s:colors
endfunction