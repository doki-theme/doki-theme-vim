

let s:colors = {
      \ "comments": { "gui": "#918561", "cterm": "101", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7777", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#FCA3C8", "cterm": "218", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#8dff4b", "cterm": "119", "cterm16": "1" },
      \ "classNameColor": { "gui": "#B39CFF", "cterm": "147", "cterm16": "1" },
      \ "keywordColor": { "gui": "#8ACAFF", "cterm": "117", "cterm16": "1" },
      \ "keyColor": { "gui": "#FFE35C", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#252627", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#ddc7a1", "cterm": "187", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ad9e6e", "cterm": "143", "cterm16": "1" },
      \ "unusedColor": { "gui": "#788189", "cterm": "244", "cterm16": "1" },
      \ "diffModified": { "gui": "#204874", "cterm": "24", "cterm16": "1" },
      \ "diffInserted": { "gui": "#244E13", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#40474E", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#463e33", "cterm": "237", "cterm16": "1" },
      \ "caretRow": { "gui": "#3f4143", "cterm": "238", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#313234", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#80755d", "cterm": "101", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#393b3d", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#9A561A", "cterm": "94", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#605d51", "cterm": "59", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#27282a", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FF984B", "cterm": "209", "cterm16": "1" }
      \}

function! genos#GetColors()
  return s:colors
endfunction