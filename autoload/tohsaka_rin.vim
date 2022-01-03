

let s:colors = {
      \ "comments": { "gui": "#4c8484", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#68a8cb", "cterm": "74", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#666f71", "cterm": "242", "cterm16": "1" },
      \ "keyColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#22191b", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#847878", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d1719", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#225041", "cterm": "238", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#391717", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#211D1E", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#69e0f5", "cterm": "81", "cterm16": "1" }
      \}

function! tohsaka_rin#GetColors()
  return s:colors
endfunction