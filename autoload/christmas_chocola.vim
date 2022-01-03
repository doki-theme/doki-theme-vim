

let s:colors = {
      \ "comments": { "gui": "#72A174", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff6b75", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#77EA6E", "cterm": "113", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "keywordColor": { "gui": "#EF354B", "cterm": "203", "cterm16": "1" },
      \ "keyColor": { "gui": "#48eae4", "cterm": "80", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDBAAE", "cterm": "217", "cterm16": "1" }
      \}

function! christmas_chocola#GetColors()
  return s:colors
endfunction