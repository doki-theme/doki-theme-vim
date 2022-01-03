

let s:colors = {
      \ "comments": { "gui": "#507F78", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#82BAFF", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f3ff83", "cterm": "228", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#42FA71", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF8282", "cterm": "210", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#F1A4FA", "cterm": "219", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#0a3f39", "cterm": "237", "cterm16": "1" },
      \ "accentColor": { "gui": "#5eabb8", "cterm": "73", "cterm16": "1" },
      \ "infoForeground": { "gui": "#eae99a", "cterm": "186", "cterm16": "1" },
      \ "unusedColor": { "gui": "#64606b", "cterm": "241", "cterm16": "1" },
      \ "caretRow": { "gui": "#0b463f", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#0b423b", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "searchBackground": { "gui": "#AD4B65", "cterm": "131", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#052421", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#0c4b44", "cterm": "23", "cterm16": "1" },
      \ "stringColor": { "gui": "#53dac7", "cterm": "80", "cterm16": "1" }
      \}

function! sagiri#GetColors()
  return s:colors
endfunction