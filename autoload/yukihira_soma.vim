

let s:colors = {
      \ "comments": { "gui": "#617391", "cterm": "60", "cterm16": "1" },
      \ "constantColor": { "gui": "#FFA6E1", "cterm": "218", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#B39CFF", "cterm": "147", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#EA7777", "cterm": "174", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF984B", "cterm": "209", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FFEF41", "cterm": "227", "cterm16": "1" },
      \ "keyColor": { "gui": "#8ACAFF", "cterm": "117", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff1717", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#0c1c2e", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#d13358", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#6e89ad", "cterm": "67", "cterm16": "1" },
      \ "unusedColor": { "gui": "#788189", "cterm": "244", "cterm16": "1" },
      \ "diffModified": { "gui": "#204874", "cterm": "24", "cterm16": "1" },
      \ "diffInserted": { "gui": "#09401D", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#363B40", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#251a2b", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#172c43", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#09192b", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d6c80", "cterm": "60", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#112439", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fefefe", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3B65B3", "cterm": "61", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4f1d27", "cterm": "235", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#152940", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#4BFF75", "cterm": "84", "cterm16": "1" }
      \}

function! yukihira_soma#GetColors()
  return s:colors
endfunction