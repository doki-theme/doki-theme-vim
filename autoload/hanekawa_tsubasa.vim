

let s:colors = {
      \ "comments": { "gui": "#79769f", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff8fec", "cterm": "213", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9a97f4", "cterm": "105", "cterm16": "1" },
      \ "classNameColor": { "gui": "#e39656", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d55fde", "cterm": "170", "cterm16": "1" },
      \ "keyColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! hanekawa_tsubasa#GetColors()
  return s:colors
endfunction