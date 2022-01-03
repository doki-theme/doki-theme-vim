

let s:colors = {
      \ "comments": { "gui": "#816F93", "cterm": "96", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8BEF85", "cterm": "120", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#9581EC", "cterm": "105", "cterm16": "1" },
      \ "classNameColor": { "gui": "#E77FD5", "cterm": "176", "cterm16": "1" },
      \ "keywordColor": { "gui": "#D53232", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#1e1430", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#874488", "cterm": "96", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ad9e6e", "cterm": "143", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2c0e29", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#2f1336", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#656079", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#271233", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#7B1212", "cterm": "88", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#452346", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2f143b", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! jahy#GetColors()
  return s:colors
endfunction