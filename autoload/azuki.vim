

let s:colors = {
      \ "comments": { "gui": "#807066", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#efacfc", "cterm": "219", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f585ab", "cterm": "211", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ffe845", "cterm": "221", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c4ff8d", "cterm": "192", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffad46", "cterm": "215", "cterm16": "1" },
      \ "keyColor": { "gui": "#96f3fd", "cterm": "123", "cterm16": "1" },
      \ "stringColor": { "gui": "#e0f6bf", "cterm": "193", "cterm16": "1" }
      \}

function! azuki#GetColors()
  return s:colors
endfunction