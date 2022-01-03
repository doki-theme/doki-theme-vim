

let s:colors = {
      \ "comments": { "gui": "#735253", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#4fcad5", "cterm": "80", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b48fec", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7092ea", "cterm": "68", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#0b0000", "cterm": "16", "cterm16": "1" },
      \ "accentColor": { "gui": "#8a1820", "cterm": "88", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7e2a2a", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#121e31", "cterm": "234", "cterm16": "1" },
      \ "diffInserted": { "gui": "#0c230b", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#1c1214", "cterm": "233", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1d0406", "cterm": "232", "cterm16": "1" },
      \ "caretRow": { "gui": "#1e0607", "cterm": "232", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#97706f", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#140404", "cterm": "232", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2a6121", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#390c10", "cterm": "233", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#280a0b", "cterm": "232", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! jabami_yumeko#GetColors()
  return s:colors
endfunction