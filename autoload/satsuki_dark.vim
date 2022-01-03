

let s:colors = {
      \ "comments": { "gui": "#596570", "cterm": "241", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff6b75", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e24a3e", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#46F263", "cterm": "83", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! satsuki_dark#GetColors()
  return s:colors
endfunction