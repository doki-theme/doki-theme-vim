

let s:colors = {
      \ "comments": { "gui": "#5c6c9e", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7286F5", "cterm": "69", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f3b085", "cterm": "216", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8BEF85", "cterm": "120", "cterm16": "1" },
      \ "keywordColor": { "gui": "#57e1ee", "cterm": "81", "cterm16": "1" },
      \ "keyColor": { "gui": "#FFE35C", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#0b1633", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#3eb7e5", "cterm": "74", "cterm16": "1" },
      \ "infoForeground": { "gui": "#70bfbc", "cterm": "73", "cterm16": "1" },
      \ "unusedColor": { "gui": "#4e565e", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#183059", "cterm": "236", "cterm16": "1" },
      \ "diffInserted": { "gui": "#122C12", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#232C3E", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#0a2458", "cterm": "17", "cterm16": "1" },
      \ "caretRow": { "gui": "#112358", "cterm": "17", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#0b173a", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d6680", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#0f1e4c", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#127B1B", "cterm": "28", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#05649c", "cterm": "25", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#16295e", "cterm": "17", "cterm16": "1" },
      \ "stringColor": { "gui": "#A2EEFC", "cterm": "159", "cterm16": "1" }
      \}

function! misaka_mikoto#GetColors()
  return s:colors
endfunction