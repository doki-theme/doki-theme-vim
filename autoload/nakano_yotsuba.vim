

let s:colors = {
      \ "comments": { "gui": "#6C524E", "cterm": "239", "cterm16": "1" },
      \ "constantColor": { "gui": "#9DACF6", "cterm": "147", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#A884EF", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ffba2f", "cterm": "214", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "keyColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#110c15", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#e86a44", "cterm": "167", "cterm16": "1" },
      \ "caretRow": { "gui": "#2d0d0d", "cterm": "233", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#F8E3D7", "cterm": "224", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#280b0b", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#49357C", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#622316", "cterm": "52", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#340e0e", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_yotsuba#GetColors()
  return s:colors
endfunction