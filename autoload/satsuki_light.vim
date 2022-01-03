

let s:colors = {
      \ "comments": { "gui": "#505D64", "cterm": "59", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#EE5C09", "cterm": "202", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#1136b9", "cterm": "25", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#13a78c", "cterm": "36", "cterm16": "1" },
      \ "keyColor": { "gui": "#79074c", "cterm": "89", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "caretRow": { "gui": "#e6effc", "cterm": "255", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#344f69", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f0f5fd", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#161165", "cterm": "17", "cterm16": "1" },
      \ "searchBackground": { "gui": "#9c8bf0", "cterm": "141", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#0e2c57", "cterm": "17", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#748fec", "cterm": "105", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#0F92E3", "cterm": "32", "cterm16": "1" }
      \}

function! satsuki_light#GetColors()
  return s:colors
endfunction