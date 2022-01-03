

let s:colors = {
      \ "comments": { "gui": "#686a80", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#5ddeda", "cterm": "80", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9bf8ff", "cterm": "123", "cterm16": "1" },
      \ "classNameColor": { "gui": "#9d8df6", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#6a96e9", "cterm": "68", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! vanilla#GetColors()
  return s:colors
endfunction