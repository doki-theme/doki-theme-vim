

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#a7a0d1", "cterm": "146", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e87bc3", "cterm": "175", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa554", "cterm": "215", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f5c9fc", "cterm": "225", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d776ae", "cterm": "175", "cterm16": "1" },
      \ "keyColor": { "gui": "#f6ebb7", "cterm": "223", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#cd5257", "cterm": "167", "cterm16": "1" }
      \}

function! astolfo#GetColors()
  return s:colors
endfunction