

let s:colors = {
      \ "comments": { "gui": "#9C67AF", "cterm": "133", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! natsuki_dark#GetColors()
  return s:colors
endfunction