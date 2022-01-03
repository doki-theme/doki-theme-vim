

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#578CDA", "cterm": "68", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8dc6ef", "cterm": "117", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#2d3047", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#61647b", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2a2d44", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#28734B", "cterm": "239", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4C637A", "cterm": "60", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2e3149", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! aqua#GetColors()
  return s:colors
endfunction