

let s:colors = {
      \ "comments": { "gui": "#79769f", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff8fec", "cterm": "213", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9a97f4", "cterm": "105", "cterm16": "1" },
      \ "classNameColor": { "gui": "#e39656", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d55fde", "cterm": "170", "cterm16": "1" },
      \ "keyColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#0f0d10", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#634F8D", "cterm": "60", "cterm16": "1" },
      \ "infoForeground": { "gui": "#988ccb", "cterm": "104", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "caretRow": { "gui": "#1e1d1f", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#777495", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#181719", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ebd6fc", "cterm": "189", "cterm16": "1" },
      \ "searchBackground": { "gui": "#305D49", "cterm": "238", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#ebd6fc", "cterm": "189", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5a3b5d", "cterm": "240", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#322932", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! hanekawa_tsubasa#GetColors()
  return s:colors
endfunction