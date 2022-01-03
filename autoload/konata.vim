

let s:colors = {
      \ "comments": { "gui": "#B0C0FC", "cterm": "147", "cterm16": "1" },
      \ "constantColor": { "gui": "#f6be8b", "cterm": "216", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f4ffa2", "cterm": "229", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#60ff62", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#cda8fa", "cterm": "183", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffc9d7", "cterm": "224", "cterm16": "1" },
      \ "keyColor": { "gui": "#fffd9b", "cterm": "228", "cterm16": "1" },
      \ "stringColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" }
      \}

function! konata#GetColors()
  return s:colors
endfunction