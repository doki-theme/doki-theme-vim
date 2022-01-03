

let s:colors = {
      \ "comments": { "gui": "#6b7b80", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#788a8b", "cterm": "245", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#84D0FF", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#89acf6", "cterm": "111", "cterm16": "1" },
      \ "keywordColor": { "gui": "#9f73ea", "cterm": "134", "cterm16": "1" },
      \ "keyColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#363b3d", "cterm": "237", "cterm16": "1" },
      \ "accentColor": { "gui": "#4ed4b0", "cterm": "79", "cterm16": "1" },
      \ "caretRow": { "gui": "#353d41", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#556c6a", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#353b3f", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3F6F80", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#295043", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3c4443", "cterm": "238", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! gray#GetColors()
  return s:colors
endfunction