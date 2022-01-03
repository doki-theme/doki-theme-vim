

let s:colors = {
      \ "comments": { "gui": "#7d62a4", "cterm": "97", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8f8bff", "cterm": "105", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#55daff", "cterm": "81", "cterm16": "1" },
      \ "classNameColor": { "gui": "#50cefb", "cterm": "81", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e42b54", "cterm": "161", "cterm16": "1" },
      \ "keyColor": { "gui": "#f6e7ba", "cterm": "223", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#20052a", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#bc5d71", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#79b7c1", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#1C1B23", "cterm": "234", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2a0930", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#2e0639", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#70677b", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2a0635", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#b4e5f4", "cterm": "153", "cterm16": "1" },
      \ "searchBackground": { "gui": "#234260", "cterm": "238", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#3d1535", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#310e32", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#e09cf3", "cterm": "183", "cterm16": "1" }
      \}

function! maika#GetColors()
  return s:colors
endfunction