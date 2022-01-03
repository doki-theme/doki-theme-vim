

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "classNameColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#3B82BD", "cterm": "67", "cterm16": "1" },
      \ "stringColor": { "gui": "#f5cc5a", "cterm": "221", "cterm16": "1" }
      \}

function! asuna_dark#GetColors()
  return s:colors
endfunction