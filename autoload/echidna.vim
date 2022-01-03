

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#8b8b8b", "cterm": "245", "cterm16": "1" },
      \ "keyColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#1a171c", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6f7779", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#171419", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ebd6fc", "cterm": "189", "cterm16": "1" },
      \ "searchBackground": { "gui": "#5a3b5d", "cterm": "240", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#274540", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#1b181d", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! echidna#GetColors()
  return s:colors
endfunction