

let s:colors = {
      \ "comments": { "gui": "#6387AF", "cterm": "67", "cterm16": "1" },
      \ "constantColor": { "gui": "#78DBEF", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#D92C3A", "cterm": "161", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#2D96EA", "cterm": "32", "cterm16": "1" },
      \ "classNameColor": { "gui": "#B5AAEE", "cterm": "147", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e83737", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff0505", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#00203e", "cterm": "17", "cterm16": "1" },
      \ "accentColor": { "gui": "#D53232", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ad9e6e", "cterm": "143", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#00388C", "cterm": "24", "cterm16": "1" },
      \ "diffInserted": { "gui": "#002A08", "cterm": "232", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#112938", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3B1414", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#261a30", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#001d39", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d7685", "cterm": "66", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#002243", "cterm": "17", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#14447C", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#480F0F", "cterm": "52", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#00274e", "cterm": "17", "cterm16": "1" },
      \ "stringColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" }
      \}

function! essex#GetColors()
  return s:colors
endfunction