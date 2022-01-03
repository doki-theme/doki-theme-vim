

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#69ecf5", "cterm": "87", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6AADFF", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#d285fd", "cterm": "177", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#231a31", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6a6679", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1f182d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#665DA6", "cterm": "61", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#492744", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#251832", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FAF7BA", "cterm": "229", "cterm16": "1" }
      \}

function! kanna#GetColors()
  return s:colors
endfunction