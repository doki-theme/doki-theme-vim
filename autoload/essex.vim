

let s:colors = {
      \ "comments": { "gui": "#6387AF", "cterm": "67", "cterm16": "1" },
      \ "constantColor": { "gui": "#78DBEF", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#D92C3A", "cterm": "161", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#2D96EA", "cterm": "32", "cterm16": "1" },
      \ "classNameColor": { "gui": "#B5AAEE", "cterm": "147", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e83737", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff0505", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! essex#GetColors()
  return s:colors
endfunction