

let s:colors = {
      \ "comments": { "gui": "#a47272", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#34a7d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa2da", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFB86C", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "keyColor": { "gui": "#c05388", "cterm": "132", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#3a1020", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d6a53e", "cterm": "179", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b19e78", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#54545B", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#1c2331", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#102d0e", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#412a2b", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3c1623", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#3a1020", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#a87975", "cterm": "138", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#360f1d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#772761", "cterm": "89", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5b3225", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#38101e", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#e2d9bd", "cterm": "187", "cterm16": "1" }
      \}

function! miia#GetColors()
  return s:colors
endfunction