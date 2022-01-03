

let s:colors = {
      \ "comments": { "gui": "#9C67AF", "cterm": "133", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#441539", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#796675", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3e1334", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#6d4cb9", "cterm": "61", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e6afca", "cterm": "182", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#602b50", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#441a35", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! natsuki_dark#GetColors()
  return s:colors
endfunction