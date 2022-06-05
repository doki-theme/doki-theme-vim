

let s:colors = {
      \ "comments": { "gui": "#957AA3", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#251CDE", "cterm": "20", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#AC2596", "cterm": "126", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#C95FC0", "cterm": "169", "cterm16": "1" },
      \ "classNameColor": { "gui": "#BF1010", "cterm": "124", "cterm16": "1" },
      \ "keywordColor": { "gui": "#5815CE", "cterm": "56", "cterm16": "1" },
      \ "keyColor": { "gui": "#3E6DE5", "cterm": "62", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff000f", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#e2c9fa", "cterm": "189", "cterm16": "1" },
      \ "accentColor": { "gui": "#7F5EF5", "cterm": "99", "cterm16": "1" },
      \ "infoForeground": { "gui": "#9160cd", "cterm": "98", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A18EA7", "cterm": "247", "cterm16": "1" },
      \ "diffModified": { "gui": "#ADBCF6", "cterm": "147", "cterm16": "1" },
      \ "diffInserted": { "gui": "#b4e6c3", "cterm": "151", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#CAC7DE", "cterm": "251", "cterm16": "1" },
      \ "codeBlock": { "gui": "#d1c4fa", "cterm": "189", "cterm16": "1" },
      \ "caretRow": { "gui": "#DEC3F9", "cterm": "183", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#E3CCFD", "cterm": "189", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#A46B21", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#8541b3", "cterm": "97", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#e0c7fb", "cterm": "189", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#80CEFF", "cterm": "117", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#f1b7d6", "cterm": "218", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#dfc5fa", "cterm": "189", "cterm16": "1" },
      \ "stringColor": { "gui": "#8747CE", "cterm": "98", "cterm16": "1" }
      \}

function! nakano_ichika#GetColors()
  return s:colors
endfunction