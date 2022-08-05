

let s:colors = {
      \ "comments": { "gui": "#67807b", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#60a498", "cterm": "72", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#FF9CEA", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" },
      \ "keywordColor": { "gui": "#7BF8E1", "cterm": "122", "cterm16": "1" },
      \ "keyColor": { "gui": "#95C8FA", "cterm": "117", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2c3333", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#53b0b4", "cterm": "73", "cterm16": "1" },
      \ "infoForeground": { "gui": "#73999b", "cterm": "246", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#25425F", "cterm": "238", "cterm16": "1" },
      \ "diffInserted": { "gui": "#214421", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#3C4240", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2b3231", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#313938", "cterm": "237", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2f3635", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#303837", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#654773", "cterm": "241", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4c7a76", "cterm": "243", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#273431", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#B5F6BA", "cterm": "157", "cterm16": "1" }
      \}

function! hatsune_miku#GetColors()
  return s:colors
endfunction