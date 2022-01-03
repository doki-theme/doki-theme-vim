

let s:colors = {
      \ "comments": { "gui": "#B0C0FC", "cterm": "147", "cterm16": "1" },
      \ "constantColor": { "gui": "#f6be8b", "cterm": "216", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f4ffa2", "cterm": "229", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#60ff62", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#cda8fa", "cterm": "183", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffc9d7", "cterm": "224", "cterm16": "1" },
      \ "keyColor": { "gui": "#fffd9b", "cterm": "228", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#3d5d96", "cterm": "60", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3a588e", "cterm": "60", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "searchBackground": { "gui": "#6a527e", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#3a6c75", "cterm": "242", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3b5a91", "cterm": "60", "cterm16": "1" },
      \ "stringColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" }
      \}

function! konata#GetColors()
  return s:colors
endfunction