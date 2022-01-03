

let s:colors = {
      \ "comments": { "gui": "#5A4C63", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#5ea7ff", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "keyColor": { "gui": "#68c4ee", "cterm": "81", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_nino#GetColors()
  return s:colors
endfunction