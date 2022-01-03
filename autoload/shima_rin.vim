

let s:colors = {
      \ "comments": { "gui": "#687380", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#6c7c96", "cterm": "66", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#8bd9ff", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#89acf6", "cterm": "111", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ea73d6", "cterm": "170", "cterm16": "1" },
      \ "keyColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2e343e", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#6688ad", "cterm": "67", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b0a17f", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#253F4C", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#223B28", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#30383E", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3c3443", "cterm": "237", "cterm16": "1" },
      \ "caretRow": { "gui": "#313a49", "cterm": "237", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2b303b", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5a626c", "cterm": "241", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2f3643", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#195A80", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4f3a4e", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#323743", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! shima_rin#GetColors()
  return s:colors
endfunction