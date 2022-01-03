

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#DEC4AA", "cterm": "187", "cterm16": "1" },
      \ "classNameColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keywordColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF8C74", "cterm": "210", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! makise_kurisu#GetColors()
  return s:colors
endfunction