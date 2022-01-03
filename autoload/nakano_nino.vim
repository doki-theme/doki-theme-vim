

let s:colors = {
      \ "comments": { "gui": "#5A4C63", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#5ea7ff", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "keyColor": { "gui": "#68c4ee", "cterm": "81", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#221c22", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d45575", "cterm": "168", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ab8d9f", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "codeBlock": { "gui": "#232024", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#272328", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#242025", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#35637C", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#452735", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#252126", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_nino#GetColors()
  return s:colors
endfunction