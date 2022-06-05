

let s:colors = {
      \ "comments": { "gui": "#AA9381", "cterm": "138", "cterm16": "1" },
      \ "constantColor": { "gui": "#E734A8", "cterm": "169", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#972CA3", "cterm": "91", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#D9732E", "cterm": "166", "cterm16": "1" },
      \ "classNameColor": { "gui": "#3451b1", "cterm": "61", "cterm16": "1" },
      \ "keywordColor": { "gui": "#BF1010", "cterm": "124", "cterm16": "1" },
      \ "keyColor": { "gui": "#4B72D7", "cterm": "62", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff000f", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#fce2c6", "cterm": "224", "cterm16": "1" },
      \ "accentColor": { "gui": "#cb3752", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b87157", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#AE9286", "cterm": "138", "cterm16": "1" },
      \ "diffModified": { "gui": "#d4d4e3", "cterm": "188", "cterm16": "1" },
      \ "diffInserted": { "gui": "#E0E4B4", "cterm": "187", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#E8D6C0", "cterm": "187", "cterm16": "1" },
      \ "codeBlock": { "gui": "#ffddbd", "cterm": "223", "cterm16": "1" },
      \ "caretRow": { "gui": "#f9e2c4", "cterm": "224", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FFE7CD", "cterm": "224", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#A46B21", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#CD9774", "cterm": "174", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#fbe4c8", "cterm": "224", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#B3BFFA", "cterm": "147", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#f4ac96", "cterm": "216", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f8e2c0", "cterm": "223", "cterm16": "1" },
      \ "stringColor": { "gui": "#3492b1", "cterm": "67", "cterm16": "1" }
      \}

function! senko#GetColors()
  return s:colors
endfunction