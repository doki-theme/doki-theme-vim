

let s:colors = {
      \ "comments": { "gui": "#807571", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec93a1", "cterm": "211", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#fd9144", "cterm": "209", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ad8cee", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ee7fdc", "cterm": "212", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#4fe1a9", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! maple_dark#GetColors()
  return s:colors
endfunction