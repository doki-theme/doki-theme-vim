

let s:colors = {
      \ "comments": { "gui": "#816F93", "cterm": "96", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8BEF85", "cterm": "120", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9581EC", "cterm": "105", "cterm16": "1" },
      \ "classNameColor": { "gui": "#E77FD5", "cterm": "176", "cterm16": "1" },
      \ "keywordColor": { "gui": "#D53232", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! jahy#GetColors()
  return s:colors
endfunction