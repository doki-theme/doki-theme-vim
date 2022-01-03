

let s:colors = {
      \ "comments": { "gui": "#5b574a", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#d776ae", "cterm": "175", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#62e665", "cterm": "77", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E3A70E", "cterm": "178", "cterm16": "1" },
      \ "classNameColor": { "gui": "#D233A2", "cterm": "169", "cterm16": "1" },
      \ "keywordColor": { "gui": "#6d7fd4", "cterm": "68", "cterm16": "1" },
      \ "keyColor": { "gui": "#5cd7d7", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#95acbd", "cterm": "109", "cterm16": "1" }
      \}

function! hayase_nagatoro#GetColors()
  return s:colors
endfunction