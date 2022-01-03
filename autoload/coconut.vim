

let s:colors = {
      \ "comments": { "gui": "#6f6880", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#50b5d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9bf8ff", "cterm": "123", "cterm16": "1" },
      \ "classNameColor": { "gui": "#f689f6", "cterm": "213", "cterm16": "1" },
      \ "keywordColor": { "gui": "#b897f6", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#48eae4", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#393243", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#605a6c", "cterm": "59", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#362f3f", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#635628", "cterm": "58", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#255b82", "cterm": "24", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#383142", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! coconut#GetColors()
  return s:colors
endfunction