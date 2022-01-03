

let s:colors = {
      \ "comments": { "gui": "#908250", "cterm": "101", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#1a821b", "cterm": "28", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#aa2537", "cterm": "125", "cterm16": "1" },
      \ "classNameColor": { "gui": "#0E8D61", "cterm": "29", "cterm16": "1" },
      \ "keywordColor": { "gui": "#A74503", "cterm": "130", "cterm16": "1" },
      \ "keyColor": { "gui": "#176B82", "cterm": "24", "cterm16": "1" },
      \ "stringColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" }
      \}

function! tohru#GetColors()
  return s:colors
endfunction