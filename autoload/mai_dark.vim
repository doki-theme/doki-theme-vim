

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b772de", "cterm": "134", "cterm16": "1" },
      \ "classNameColor": { "gui": "#61dba0", "cterm": "79", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ebd5d4", "cterm": "188", "cterm16": "1" },
      \ "keyColor": { "gui": "#50cefb", "cterm": "81", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" }
      \}

function! mai_dark#GetColors()
  return s:colors
endfunction