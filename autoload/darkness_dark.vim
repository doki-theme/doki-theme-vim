

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" },
      \ "classNameColor": { "gui": "#d53a4a", "cterm": "167", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffba2f", "cterm": "214", "cterm16": "1" },
      \ "keyColor": { "gui": "#3492b1", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! darkness_dark#GetColors()
  return s:colors
endfunction