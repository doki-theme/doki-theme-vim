

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8C90E5", "cterm": "104", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#C1B5C3", "cterm": "250", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#2a3037", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2a3137", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2C5277", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#563036", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#272e34", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#efa554", "cterm": "215", "cterm16": "1" }
      \}

function! ryuko_dark#GetColors()
  return s:colors
endfunction