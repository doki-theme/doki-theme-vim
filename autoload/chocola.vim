

let s:colors = {
      \ "comments": { "gui": "#806872", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff6b75", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f8835f", "cterm": "209", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "keyColor": { "gui": "#48eae4", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#2c2428", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#f771a3", "cterm": "205", "cterm16": "1" },
      \ "caretRow": { "gui": "#352f31", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6c5a63", "cterm": "241", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#312c2e", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#235E52", "cterm": "23", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#6a3849", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#393336", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! chocola#GetColors()
  return s:colors
endfunction