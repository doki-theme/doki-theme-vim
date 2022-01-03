

let s:colors = {
      \ "comments": { "gui": "#4E6B4C", "cterm": "239", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#388E3C", "cterm": "65", "cterm16": "1" },
      \ "classNameColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "keywordColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "keyColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! monika_dark#GetColors()
  return s:colors
endfunction