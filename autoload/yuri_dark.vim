

let s:colors = {
      \ "comments": { "gui": "#8B79B4", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BC60CB", "cterm": "134", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "keyColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#473466", "cterm": "238", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6f6679", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#453161", "cterm": "238", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e5f3", "cterm": "254", "cterm16": "1" },
      \ "searchBackground": { "gui": "#7749b2", "cterm": "97", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#B39EFF", "cterm": "147", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4c2a70", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3C1D55", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! yuri_dark#GetColors()
  return s:colors
endfunction