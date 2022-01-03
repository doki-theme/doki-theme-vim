

let s:colors = {
      \ "comments": { "gui": "#a06aa4", "cterm": "133", "cterm16": "1" },
      \ "constantColor": { "gui": "#34a7d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8d82ea", "cterm": "104", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa2da", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1a0717", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#ffa0b2", "cterm": "217", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ab5555", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#122542", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#111F11", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#211C21", "cterm": "234", "cterm16": "1" },
      \ "codeBlock": { "gui": "#261231", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#230920", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#796675", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d081b", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#403B98", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#f6c4d3", "cterm": "224", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#602b50", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#240a24", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! gasai_yuno#GetColors()
  return s:colors
endfunction