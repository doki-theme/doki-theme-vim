

let s:colors = {
      \ "comments": { "gui": "#596570", "cterm": "241", "cterm16": "1" },
      \ "constantColor": { "gui": "#96b7fb", "cterm": "111", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ff6b75", "cterm": "204", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e24a3e", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#46F263", "cterm": "83", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#212427", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#f03022", "cterm": "202", "cterm16": "1" },
      \ "infoForeground": { "gui": "#af543f", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B3A47", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E3425", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2F3334", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#402729", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#2b2e31", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#242729", "cterm": "235", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#596570", "cterm": "241", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#282b2e", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#1A6020", "cterm": "22", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5d2626", "cterm": "235", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2b2e31", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! satsuki_dark#GetColors()
  return s:colors
endfunction