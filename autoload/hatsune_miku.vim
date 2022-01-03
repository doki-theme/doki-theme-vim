

let s:colors = {
      \ "comments": { "gui": "#67807b", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#60a498", "cterm": "72", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ff69df", "cterm": "206", "cterm16": "1" },
      \ "classNameColor": { "gui": "#aae2f2", "cterm": "153", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#68f3e7", "cterm": "86", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! hatsune_miku#GetColors()
  return s:colors
endfunction