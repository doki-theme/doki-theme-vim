

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#DEC4AA", "cterm": "187", "cterm16": "1" },
      \ "classNameColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keywordColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF8C74", "cterm": "210", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1a0e0e", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#8F60B5", "cterm": "97", "cterm16": "1" },
      \ "infoForeground": { "gui": "#843030", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#231314", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#210e0f", "cterm": "233", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#624849", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d0c0d", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3F2E73", "cterm": "237", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#391717", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#231010", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! makise_kurisu#GetColors()
  return s:colors
endfunction