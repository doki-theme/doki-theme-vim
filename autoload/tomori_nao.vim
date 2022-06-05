

let s:colors = {
      \ "comments": { "gui": "#9C917E", "cterm": "246", "cterm16": "1" },
      \ "constantColor": { "gui": "#C26010", "cterm": "130", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#6A0FB8", "cterm": "55", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#A80675", "cterm": "126", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#030BA0", "cterm": "19", "cterm16": "1" },
      \ "keyColor": { "gui": "#098776", "cterm": "30", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF0817", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#f1e7de", "cterm": "254", "cterm16": "1" },
      \ "accentColor": { "gui": "#276fd8", "cterm": "26", "cterm16": "1" },
      \ "infoForeground": { "gui": "#608bcd", "cterm": "68", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A7A590", "cterm": "144", "cterm16": "1" },
      \ "diffModified": { "gui": "#83D8E8", "cterm": "116", "cterm16": "1" },
      \ "diffInserted": { "gui": "#ACE79D", "cterm": "151", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#DED6C6", "cterm": "188", "cterm16": "1" },
      \ "codeBlock": { "gui": "#efe0d9", "cterm": "254", "cterm16": "1" },
      \ "caretRow": { "gui": "#e2e1e2", "cterm": "254", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#efe7de", "cterm": "254", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#A46B21", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#417db3", "cterm": "67", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#e7e3e0", "cterm": "254", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#FF95CB", "cterm": "212", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#b7c6ef", "cterm": "153", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#e7e1d9", "cterm": "254", "cterm16": "1" },
      \ "stringColor": { "gui": "#296FCB", "cterm": "26", "cterm16": "1" }
      \}

function! tomori_nao#GetColors()
  return s:colors
endfunction