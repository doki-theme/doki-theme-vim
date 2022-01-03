

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#9D868D", "cterm": "138", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#2e7093", "cterm": "24", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF3889", "cterm": "204", "cterm16": "1" },
      \ "keywordColor": { "gui": "#9D868D", "cterm": "138", "cterm16": "1" },
      \ "keyColor": { "gui": "#3F77EF", "cterm": "69", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#f0faff", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#00bcd4", "cterm": "38", "cterm16": "1" },
      \ "infoForeground": { "gui": "#64a6ac", "cterm": "73", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EBEBEB", "cterm": "255", "cterm16": "1" },
      \ "codeBlock": { "gui": "#eaf0f6", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#dceef7", "cterm": "255", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#e4f3fa", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "searchBackground": { "gui": "#BDB9F1", "cterm": "147", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#393d45", "cterm": "237", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#a9c8ec", "cterm": "153", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#e5edf6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#DC872E", "cterm": "172", "cterm16": "1" }
      \}

function! sayori_light#GetColors()
  return s:colors
endfunction