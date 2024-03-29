

let s:colors = {
      \ "comments": { "gui": "#6A8882", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#EA7797", "cterm": "174", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8BEF85", "cterm": "120", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#8bd9ff", "cterm": "117", "cterm16": "1" },
      \ "classNameColor": { "gui": "#E77FD5", "cterm": "176", "cterm16": "1" },
      \ "keywordColor": { "gui": "#49e7d0", "cterm": "80", "cterm16": "1" },
      \ "keyColor": { "gui": "#eec45e", "cterm": "221", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#121e1c", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#6cb3b5", "cterm": "73", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b0a17f", "cterm": "144", "cterm16": "1" },
      \ "unusedColor": { "gui": "#545c5b", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B3360", "cterm": "23", "cterm16": "1" },
      \ "diffInserted": { "gui": "#153315", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#1F2F2D", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#292a1f", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#221f28", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#121e1c", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#657978", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#182826", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#195A80", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#3d213e", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#1b2d2a", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! kirino#GetColors()
  return s:colors
endfunction