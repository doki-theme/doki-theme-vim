

let s:colors = {
      \ "comments": { "gui": "#6C524E", "cterm": "239", "cterm16": "1" },
      \ "constantColor": { "gui": "#9DACF6", "cterm": "147", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#A884EF", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ffba2f", "cterm": "214", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "keyColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_yotsuba#GetColors()
  return s:colors
endfunction