

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#89c0d9", "cterm": "110", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ef596f", "cterm": "203", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6AADFF", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#788a8b", "cterm": "245", "cterm16": "1" },
      \ "keyColor": { "gui": "#45e68a", "cterm": "78", "cterm16": "1" },
      \ "errorColor": { "gui": "#f44747", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#131514", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#b53241", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7da1c2", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#142F14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#262626", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1b242e", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#1f2125", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d1f23", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#6b232d", "cterm": "236", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#25435a", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#232529", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! rei#GetColors()
  return s:colors
endfunction