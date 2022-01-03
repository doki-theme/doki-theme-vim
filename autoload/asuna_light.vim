

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#212121", "cterm": "234", "cterm16": "1" },
      \ "classNameColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" },
      \ "keyColor": { "gui": "#0d5fa6", "cterm": "25", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#fdfdfd", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" },
      \ "infoForeground": { "gui": "#a25252", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "caretRow": { "gui": "#feeeee", "cterm": "255", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#F8E728", "cterm": "220", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#e9b4b8", "cterm": "181", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#a61d0d", "cterm": "124", "cterm16": "1" }
      \}

function! asuna_light#GetColors()
  return s:colors
endfunction