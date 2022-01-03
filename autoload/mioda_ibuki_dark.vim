

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ff69df", "cterm": "206", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "keywordColor": { "gui": "#8b8b8b", "cterm": "245", "cterm16": "1" },
      \ "keyColor": { "gui": "#5ea7ff", "cterm": "75", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! mioda_ibuki_dark#GetColors()
  return s:colors
endfunction