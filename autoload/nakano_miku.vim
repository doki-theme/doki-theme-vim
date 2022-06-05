

let s:colors = {
      \ "comments": { "gui": "#6C888D", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#da8d97", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#cda8fa", "cterm": "183", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ba92f3", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#60ff62", "cterm": "83", "cterm16": "1" },
      \ "keyColor": { "gui": "#4BABFF", "cterm": "75", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#24445b", "cterm": "238", "cterm16": "1" },
      \ "accentColor": { "gui": "#A5F3FA", "cterm": "159", "cterm16": "1" },
      \ "infoForeground": { "gui": "#addfa9", "cterm": "151", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A5A1A1", "cterm": "247", "cterm16": "1" },
      \ "diffModified": { "gui": "#2f5d80", "cterm": "24", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E6168", "cterm": "23", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#3B4755", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#234b52", "cterm": "239", "cterm16": "1" },
      \ "caretRow": { "gui": "#25475f", "cterm": "23", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#244158", "cterm": "238", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#FF7AB2", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#B39AFF", "cterm": "141", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#6DD6EE", "cterm": "81", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#54ea7c", "cterm": "78", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#FF91BF", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#fdaa39", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#b9dfb6", "cterm": "151", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#25455c", "cterm": "238", "cterm16": "1" },
      \ "searchForeground": { "gui": "#dbfbfd", "cterm": "195", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2E6E61", "cterm": "23", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#c1fdff", "cterm": "159", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#498192", "cterm": "66", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#274862", "cterm": "238", "cterm16": "1" },
      \ "stringColor": { "gui": "#fffeaf", "cterm": "229", "cterm16": "1" }
      \}

function! nakano_miku#GetColors()
  return s:colors
endfunction