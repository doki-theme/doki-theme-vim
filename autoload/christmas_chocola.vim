

let s:colors = {
      \ "comments": { "gui": "#72A174", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff6b75", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#77EA6E", "cterm": "113", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "keywordColor": { "gui": "#EF354B", "cterm": "203", "cterm16": "1" },
      \ "keyColor": { "gui": "#48eae4", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff1212", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#37131b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#239324", "cterm": "28", "cterm16": "1" },
      \ "caretRow": { "gui": "#1e3828", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6d816c", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1b3324", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#710E1B", "cterm": "52", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#1f422d", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#22402e", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDBAAE", "cterm": "217", "cterm16": "1" }
      \}

function! christmas_chocola#GetColors()
  return s:colors
endfunction