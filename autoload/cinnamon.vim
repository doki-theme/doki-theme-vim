

let s:colors = {
      \ "comments": { "gui": "#7384d4", "cterm": "68", "cterm16": "1" },
      \ "constantColor": { "gui": "#8bc1f8", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f3ff83", "cterm": "228", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#60ff62", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#d0a2fa", "cterm": "183", "cterm16": "1" },
      \ "keywordColor": { "gui": "#53dac7", "cterm": "80", "cterm16": "1" },
      \ "keyColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#37357f", "cterm": "237", "cterm16": "1" },
      \ "accentColor": { "gui": "#54e255", "cterm": "77", "cterm16": "1" },
      \ "infoForeground": { "gui": "#dfe19f", "cterm": "187", "cterm16": "1" },
      \ "unusedColor": { "gui": "#64606b", "cterm": "241", "cterm16": "1" },
      \ "diffModified": { "gui": "#274B9B", "cterm": "24", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B5059", "cterm": "23", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#3B4267", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#33417a", "cterm": "238", "cterm16": "1" },
      \ "caretRow": { "gui": "#3f3c91", "cterm": "60", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#343277", "cterm": "237", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#FF7AB2", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#B39AFF", "cterm": "141", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#6DD6EE", "cterm": "81", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#54ea7c", "cterm": "78", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#FF91BF", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#fdaa39", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3b3887", "cterm": "60", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "searchBackground": { "gui": "#5334D9", "cterm": "62", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#3a6c75", "cterm": "242", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3b3886", "cterm": "60", "cterm16": "1" },
      \ "stringColor": { "gui": "#b3a9ff", "cterm": "147", "cterm16": "1" }
      \}

function! cinnamon#GetColors()
  return s:colors
endfunction