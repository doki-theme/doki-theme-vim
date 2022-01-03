

let s:colors = {
      \ "comments": { "gui": "#987fa5", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#C84EB8", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#a87ff8", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EF9FD8", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#F375C8", "cterm": "212", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! ram#GetColors()
  return s:colors
endfunction