

let s:colors = {
      \ "comments": { "gui": "#7d62a4", "cterm": "97", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8f8bff", "cterm": "105", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#55daff", "cterm": "81", "cterm16": "1" },
      \ "classNameColor": { "gui": "#50cefb", "cterm": "81", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e42b54", "cterm": "161", "cterm16": "1" },
      \ "keyColor": { "gui": "#f6e7ba", "cterm": "223", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#e09cf3", "cterm": "183", "cterm16": "1" }
      \}

function! maika#GetColors()
  return s:colors
endfunction