

let s:colors = {
      \ "comments": { "gui": "#4c8484", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#FC5773", "cterm": "203", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#69e0f5", "cterm": "81", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#859395", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "errorColor": { "gui": "#C20000", "cterm": "124", "cterm16": "1" },
      \ "headerColor": { "gui": "#1b191a", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#4c9697", "cterm": "66", "cterm16": "1" },
      \ "infoForeground": { "gui": "#86a4ab", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#67414A", "cterm": "239", "cterm16": "1" },
      \ "diffModified": { "gui": "#1A233D", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#142D14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#242424", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#211D1E", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#22191b", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#161415", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#847878", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d1719", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#225041", "cterm": "238", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#501F1F", "cterm": "235", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#211D1E", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#72F8B5", "cterm": "85", "cterm16": "1" }
      \}

function! tohsaka_rin#GetColors()
  return s:colors
endfunction