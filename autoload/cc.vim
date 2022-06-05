

let s:colors = {
      \ "comments": { "gui": "#60824B", "cterm": "65", "cterm16": "1" },
      \ "constantColor": { "gui": "#2B57A7", "cterm": "25", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#B31141", "cterm": "125", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#009507", "cterm": "28", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#0803A5", "cterm": "19", "cterm16": "1" },
      \ "keyColor": { "gui": "#098776", "cterm": "30", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF0817", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#caec92", "cterm": "192", "cterm16": "1" },
      \ "accentColor": { "gui": "#68ac17", "cterm": "70", "cterm16": "1" },
      \ "infoForeground": { "gui": "#358969", "cterm": "65", "cterm16": "1" },
      \ "unusedColor": { "gui": "#7F955B", "cterm": "101", "cterm16": "1" },
      \ "diffModified": { "gui": "#91BCCE", "cterm": "110", "cterm16": "1" },
      \ "diffInserted": { "gui": "#89CE65", "cterm": "113", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#B6D489", "cterm": "150", "cterm16": "1" },
      \ "codeBlock": { "gui": "#b1e494", "cterm": "150", "cterm16": "1" },
      \ "caretRow": { "gui": "#D0F09E", "cterm": "193", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#C4EA8A", "cterm": "186", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#A46B21", "cterm": "130", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#507433", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#b6e277", "cterm": "150", "cterm16": "1" },
      \ "searchForeground": { "gui": "#323232", "cterm": "236", "cterm16": "1" },
      \ "searchBackground": { "gui": "#85CFF3", "cterm": "117", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#101010", "cterm": "233", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#92d564", "cterm": "113", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#bbe27c", "cterm": "150", "cterm16": "1" },
      \ "stringColor": { "gui": "#CB5A29", "cterm": "166", "cterm16": "1" }
      \}

function! cc#GetColors()
  return s:colors
endfunction