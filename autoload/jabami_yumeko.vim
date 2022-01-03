

let s:colors = {
      \ "comments": { "gui": "#735253", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#4fcad5", "cterm": "80", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b48fec", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7092ea", "cterm": "68", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! jabami_yumeko#GetColors()
  return s:colors
endfunction