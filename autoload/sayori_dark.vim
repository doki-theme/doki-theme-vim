

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#00BCD4", "cterm": "38", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c1ff10", "cterm": "154", "cterm16": "1" },
      \ "keywordColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "keyColor": { "gui": "#3F77EF", "cterm": "69", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#0e1b2f", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#00BCD4", "cterm": "38", "cterm16": "1" },
      \ "infoForeground": { "gui": "#3a9fb1", "cterm": "73", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1B1D31", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#17243c", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#152036", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#051a1a", "cterm": "234", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3D8FBD", "cterm": "67", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#9CF5FF", "cterm": "159", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#234164", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#1b2346", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#f1fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! sayori_dark#GetColors()
  return s:colors
endfunction