

let s:colors = {
      \ "comments": { "gui": "#80687f", "cterm": "96", "cterm16": "1" },
      \ "constantColor": { "gui": "#AE9AFF", "cterm": "141", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#ea8f73", "cterm": "173", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ff8bfd", "cterm": "213", "cterm16": "1" },
      \ "classNameColor": { "gui": "#61ead9", "cterm": "80", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ec9cb2", "cterm": "217", "cterm16": "1" },
      \ "keyColor": { "gui": "#61c1ea", "cterm": "74", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2f2128", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#78c6d0", "cterm": "116", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7ea5c1", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#5b545c", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#253F4C", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#223B28", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#343037", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#332625", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#392831", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2c1f26", "cterm": "235", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6a5a6c", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#34242d", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#195A80", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#553854", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#392831", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! nadeshiko#GetColors()
  return s:colors
endfunction