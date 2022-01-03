

let s:colors = {
      \ "comments": { "gui": "#6A8882", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8BEF85", "cterm": "120", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#8bd9ff", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#E77FD5", "cterm": "176", "cterm16": "1" },
      \ "keywordColor": { "gui": "#49e7d0", "cterm": "80", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! kirino#GetColors()
  return s:colors
endfunction