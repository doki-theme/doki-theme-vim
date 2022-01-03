

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#666f71", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b53241", "cterm": "131", "cterm16": "1" },
      \ "classNameColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#6b7476", "cterm": "243", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! rory_mercury#GetColors()
  return s:colors
endfunction