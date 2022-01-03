

let s:colors = {
      \ "comments": { "gui": "#4c8484", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#68a8cb", "cterm": "74", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#666f71", "cterm": "242", "cterm16": "1" },
      \ "keyColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "stringColor": { "gui": "#69e0f5", "cterm": "81", "cterm16": "1" }
      \}

function! tohsaka_rin#GetColors()
  return s:colors
endfunction