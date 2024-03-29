

let s:colors = {
      \ "comments": { "gui": "#807571", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec93a1", "cterm": "211", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#fd9144", "cterm": "209", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ad8cee", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ee7fdc", "cterm": "212", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keyColor": { "gui": "#4fe1a9", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#2f1b1b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#46ab79", "cterm": "72", "cterm16": "1" },
      \ "infoForeground": { "gui": "#bfb38c", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#606867", "cterm": "241", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B3A47", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E3425", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2F2A2A", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2e2b26", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#352121", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2d1d1d", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6c5b55", "cterm": "240", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#321f1f", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#734F2B", "cterm": "239", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#295043", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3c2727", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! maple_dark#GetColors()
  return s:colors
endfunction