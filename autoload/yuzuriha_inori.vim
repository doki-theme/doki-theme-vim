

let s:colors = {
      \ "comments": { "gui": "#99563D", "cterm": "95", "cterm16": "1" },
      \ "constantColor": { "gui": "#2B57A7", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#A406B4", "cterm": "127", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#B11095", "cterm": "126", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#99101B", "cterm": "88", "cterm16": "1" },
      \ "keyColor": { "gui": "#0B6374", "cterm": "24", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF0817", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#f8a56e", "cterm": "215", "cterm16": "1" },
      \ "accentColor": { "gui": "#ba1515", "cterm": "124", "cterm16": "1" },
      \ "infoForeground": { "gui": "#894935", "cterm": "95", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B3806E", "cterm": "137", "cterm16": "1" },
      \ "diffModified": { "gui": "#bc9aac", "cterm": "139", "cterm16": "1" },
      \ "diffInserted": { "gui": "#BFB152", "cterm": "143", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#e29c77", "cterm": "180", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f7997e", "cterm": "210", "cterm16": "1" },
      \ "caretRow": { "gui": "#fd9c8c", "cterm": "216", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FFA772", "cterm": "215", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#C85499", "cterm": "168", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#128BA1", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#CE4040", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#A46B21", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#743333", "cterm": "237", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f7a282", "cterm": "216", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#C89AF3", "cterm": "177", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#EC7F54", "cterm": "209", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#F8A881", "cterm": "216", "cterm16": "1" },
      \ "stringColor": { "gui": "#413AC1", "cterm": "61", "cterm16": "1" }
      \}

function! yuzuriha_inori#GetColors()
  return s:colors
endfunction