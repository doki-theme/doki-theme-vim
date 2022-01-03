

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#4E86C8", "cterm": "68", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#a87ff8", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8dc6ef", "cterm": "117", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2c2d33", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#578CDA", "cterm": "68", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7b8bab", "cterm": "103", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#36393B", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2b2c32", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#313439", "cterm": "236", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#303238", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#7a546f", "cterm": "95", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4C637A", "cterm": "60", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#272e34", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! rem#GetColors()
  return s:colors
endfunction