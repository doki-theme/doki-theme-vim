

let s:colors = {
      \ "comments": { "gui": "#6b6c80", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#F8932B", "cterm": "208", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#49FF51", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ab77ff", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#84D0FF", "cterm": "117", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#24203c", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#f58d02", "cterm": "208", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ba804b", "cterm": "137", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#223861", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1F3924", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#353539", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3f2b35", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#2c2847", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#201c37", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#55596c", "cterm": "240", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#272341", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#195A80", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#6a473d", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2c2847", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFC32F", "cterm": "214", "cterm16": "1" }
      \}

function! hinata_shoyo#GetColors()
  return s:colors
endfunction