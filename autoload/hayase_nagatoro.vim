

let s:colors = {
      \ "comments": { "gui": "#5b574a", "cterm": "240", "cterm16": "1" },
      \ "constantColor": { "gui": "#d776ae", "cterm": "175", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#62e665", "cterm": "77", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E3A70E", "cterm": "178", "cterm16": "1" },
      \ "classNameColor": { "gui": "#D233A2", "cterm": "169", "cterm16": "1" },
      \ "keywordColor": { "gui": "#6d7fd4", "cterm": "68", "cterm16": "1" },
      \ "keyColor": { "gui": "#5cd7d7", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#1a1a1a", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d2824e", "cterm": "173", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7e5b37", "cterm": "95", "cterm16": "1" },
      \ "unusedColor": { "gui": "#5D5D63", "cterm": "59", "cterm16": "1" },
      \ "diffModified": { "gui": "#142B40", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#132A13", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#242426", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1f1c1b", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#1f1f1f", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#151515", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d5550", "cterm": "240", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1b1b1b", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#255926", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5d3e2f", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#212121", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#95acbd", "cterm": "109", "cterm16": "1" }
      \}

function! hayase_nagatoro#GetColors()
  return s:colors
endfunction