

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "classNameColor": { "gui": "#78F5F0", "cterm": "123", "cterm16": "1" },
      \ "keywordColor": { "gui": "#58b7ff", "cterm": "75", "cterm16": "1" },
      \ "keyColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFF6B3", "cterm": "229", "cterm16": "1" }
      \}

function! sonoda_umi#GetColors()
  return s:colors
endfunction