

let s:colors = {
      \ "comments": { "gui": "#6b7b80", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#788a8b", "cterm": "245", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#84D0FF", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#89acf6", "cterm": "111", "cterm16": "1" },
      \ "keywordColor": { "gui": "#9f73ea", "cterm": "134", "cterm16": "1" },
      \ "keyColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! gray#GetColors()
  return s:colors
endfunction