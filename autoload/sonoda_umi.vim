

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "classNameColor": { "gui": "#78F5F0", "cterm": "123", "cterm16": "1" },
      \ "keywordColor": { "gui": "#58b7ff", "cterm": "75", "cterm16": "1" },
      \ "keyColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#191b44", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "infoForeground": { "gui": "#6878c2", "cterm": "67", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#181a47", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#181A46", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5e5e79", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#171942", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#47264B", "cterm": "238", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#272A59", "cterm": "235", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#251832", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFF6B3", "cterm": "229", "cterm16": "1" }
      \}

function! sonoda_umi#GetColors()
  return s:colors
endfunction