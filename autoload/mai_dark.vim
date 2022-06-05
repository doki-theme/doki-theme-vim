

let s:colors = {
      \ "comments": { "gui": "#6C7EA5", "cterm": "67", "cterm16": "1" },
      \ "constantColor": { "gui": "#FFEEA6", "cterm": "229", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#AFC8F5", "cterm": "153", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b772de", "cterm": "134", "cterm16": "1" },
      \ "classNameColor": { "gui": "#61dba0", "cterm": "79", "cterm16": "1" },
      \ "keywordColor": { "gui": "#50cefb", "cterm": "81", "cterm16": "1" },
      \ "keyColor": { "gui": "#F9B2FF", "cterm": "219", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#25254e", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#fee3cf", "cterm": "224", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7cab9c", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#383845", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2d3049", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#2d2d52", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#242448", "cterm": "235", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#61647b", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#29294e", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fef4ff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#4a3a71", "cterm": "239", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#235161", "cterm": "23", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2e3149", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" }
      \}

function! mai_dark#GetColors()
  return s:colors
endfunction