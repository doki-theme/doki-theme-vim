

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f5c443", "cterm": "221", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7C7C82", "cterm": "244", "cterm16": "1" },
      \ "keywordColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keyColor": { "gui": "#357fbf", "cterm": "67", "cterm16": "1" },
      \ "stringColor": { "gui": "#a18649", "cterm": "137", "cterm16": "1" }
      \}

function! ishtar_dark#GetColors()
  return s:colors
endfunction