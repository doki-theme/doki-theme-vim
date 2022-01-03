

let s:colors = {
      \ "comments": { "gui": "#a47272", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#34a7d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa2da", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFB86C", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "keyColor": { "gui": "#c05388", "cterm": "132", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#e2d9bd", "cterm": "187", "cterm16": "1" }
      \}

function! miia#GetColors()
  return s:colors
endfunction