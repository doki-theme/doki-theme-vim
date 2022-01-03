

let s:colors = {
      \ "comments": { "gui": "#9277a7", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BC60CB", "cterm": "134", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e049b0", "cterm": "169", "cterm16": "1" },
      \ "keyColor": { "gui": "#a475ef", "cterm": "141", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDEFA2", "cterm": "229", "cterm16": "1" }
      \}

function! emilia_dark#GetColors()
  return s:colors
endfunction