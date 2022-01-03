

let s:colors = {
      \ "comments": { "gui": "#726868", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#dae838", "cterm": "185", "cterm16": "1" },
      \ "keywordColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#AF5C5A", "cterm": "131", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#ffd866", "cterm": "221", "cterm16": "1" }
      \}

function! megumin#GetColors()
  return s:colors
endfunction