

let s:colors = {
      \ "comments": { "gui": "#987fa5", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#C84EB8", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#a87ff8", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EF9FD8", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#F375C8", "cterm": "212", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#353139", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#353038", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#4C637A", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#7a546f", "cterm": "95", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#322634", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! ram#GetColors()
  return s:colors
endfunction