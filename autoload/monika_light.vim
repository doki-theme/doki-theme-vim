

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#388E3C", "cterm": "65", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7AA42E", "cterm": "106", "cterm16": "1" },
      \ "keywordColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "keyColor": { "gui": "#8a777d", "cterm": "244", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#da832e", "cterm": "172", "cterm16": "1" }
      \}

function! monika_light#GetColors()
  return s:colors
endfunction