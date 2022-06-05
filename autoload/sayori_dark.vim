

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#A486FD", "cterm": "141", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7DA6FF", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#01CFE7", "cterm": "44", "cterm16": "1" },
      \ "classNameColor": { "gui": "#52FFA3", "cterm": "85", "cterm16": "1" },
      \ "keywordColor": { "gui": "#3F77EF", "cterm": "69", "cterm16": "1" },
      \ "keyColor": { "gui": "#FFF37C", "cterm": "228", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff0000", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#0e1b2f", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#00BCD4", "cterm": "38", "cterm16": "1" },
      \ "infoForeground": { "gui": "#3a9fb1", "cterm": "73", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2E313D", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1B1D31", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#17243c", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#111b2d", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#152036", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#051a1a", "cterm": "234", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3D8FBD", "cterm": "67", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#9CF5FF", "cterm": "159", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#234164", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#1b2346", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FF89BA", "cterm": "211", "cterm16": "1" }
      \}

function! sayori_dark#GetColors()
  return s:colors
endfunction