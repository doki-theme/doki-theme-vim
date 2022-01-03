

let s:colors = {
      \ "comments": { "gui": "#64757d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7B6970", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#90468c", "cterm": "96", "cterm16": "1" },
      \ "classNameColor": { "gui": "#4f5287", "cterm": "60", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "keyColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fff7f6", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#4f5287", "cterm": "60", "cterm16": "1" },
      \ "infoForeground": { "gui": "#6564ac", "cterm": "61", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "caretRow": { "gui": "#f1ecf2", "cterm": "255", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f5eef2", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#2d4d21", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#C3E8FF", "cterm": "153", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#b1b0d2", "cterm": "146", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f0e8e7", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#d27f2d", "cterm": "172", "cterm16": "1" }
      \}

function! mai_light#GetColors()
  return s:colors
endfunction