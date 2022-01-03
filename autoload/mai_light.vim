

let s:colors = {
      \ "comments": { "gui": "#64757d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7B6970", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#90468c", "cterm": "96", "cterm16": "1" },
      \ "classNameColor": { "gui": "#4f5287", "cterm": "60", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "keyColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "stringColor": { "gui": "#d27f2d", "cterm": "172", "cterm16": "1" }
      \}

function! mai_light#GetColors()
  return s:colors
endfunction