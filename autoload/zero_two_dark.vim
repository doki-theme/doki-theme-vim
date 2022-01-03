

let s:colors = {
      \ "comments": { "gui": "#a47272", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#34a7d1", "cterm": "74", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#efa2da", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFB86C", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "keyColor": { "gui": "#C04750", "cterm": "131", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#300d0e", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#e4dad4", "cterm": "253", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b19e78", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#54545B", "cterm": "240", "cterm16": "1" },
      \ "caretRow": { "gui": "#3c1414", "cterm": "233", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#a87975", "cterm": "138", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#381212", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#721515", "cterm": "52", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#531e1e", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3c1515", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#e2d9bd", "cterm": "187", "cterm16": "1" }
      \}

function! zero_two_dark#GetColors()
  return s:colors
endfunction