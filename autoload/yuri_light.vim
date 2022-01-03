

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7B6970", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#90468c", "cterm": "96", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c26a9d", "cterm": "133", "cterm16": "1" },
      \ "keywordColor": { "gui": "#c26a9d", "cterm": "133", "cterm16": "1" },
      \ "keyColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#f5f0ff", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#ab74cb", "cterm": "140", "cterm16": "1" },
      \ "infoForeground": { "gui": "#8864ac", "cterm": "97", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "codeBlock": { "gui": "#efeaf6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#e4dcf7", "cterm": "189", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#eae4fa", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#D798D6", "cterm": "176", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#ada0d2", "cterm": "146", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#eae5f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#d27f2d", "cterm": "172", "cterm16": "1" }
      \}

function! yuri_light#GetColors()
  return s:colors
endfunction