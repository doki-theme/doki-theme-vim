

let s:colors = {
      \ "comments": { "gui": "#507F78", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#82BAFF", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f3ff83", "cterm": "228", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#42FA71", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF8282", "cterm": "210", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#F1A4FA", "cterm": "219", "cterm16": "1" },
      \ "stringColor": { "gui": "#53dac7", "cterm": "80", "cterm16": "1" }
      \}

function! sagiri#GetColors()
  return s:colors
endfunction