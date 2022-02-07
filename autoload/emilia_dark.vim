

let s:colors = {
      \ "comments": { "gui": "#9277a7", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#FFB9A7", "cterm": "217", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#BF98F1", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#AE7BFF", "cterm": "141", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#EF69C3", "cterm": "205", "cterm16": "1" },
      \ "keyColor": { "gui": "#C1A2F8", "cterm": "147", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#4c2e5c", "cterm": "239", "cterm16": "1" },
      \ "accentColor": { "gui": "#a53ba0", "cterm": "133", "cterm16": "1" },
      \ "infoForeground": { "gui": "#a775ab", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#204b21", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#4E4151", "cterm": "239", "cterm16": "1" },
      \ "codeBlock": { "gui": "#442a55", "cterm": "238", "cterm16": "1" },
      \ "caretRow": { "gui": "#543466", "cterm": "240", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#492d5a", "cterm": "238", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#503161", "cterm": "239", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e5f3", "cterm": "254", "cterm16": "1" },
      \ "searchBackground": { "gui": "#7749b2", "cterm": "97", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#d29eff", "cterm": "183", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#5C3378", "cterm": "60", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#402a54", "cterm": "238", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDEFA2", "cterm": "229", "cterm16": "1" }
      \}

function! emilia_dark#GetColors()
  return s:colors
endfunction