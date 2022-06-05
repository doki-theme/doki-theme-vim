

let s:colors = {
      \ "comments": { "gui": "#647863", "cterm": "65", "cterm16": "1" },
      \ "constantColor": { "gui": "#FF8FCA", "cterm": "212", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#60E769", "cterm": "77", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFEA82", "cterm": "222", "cterm16": "1" },
      \ "keywordColor": { "gui": "#3eae5d", "cterm": "71", "cterm16": "1" },
      \ "keyColor": { "gui": "#ABFFAF", "cterm": "157", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1D2115", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#388E3C", "cterm": "65", "cterm16": "1" },
      \ "infoForeground": { "gui": "#3b753d", "cterm": "237", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#38403A", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#23271A", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#24291a", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1d2115", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#697966", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#212618", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ececec", "cterm": "255", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2362A7", "cterm": "25", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#30432B", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#252D19", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#94CFFF", "cterm": "117", "cterm16": "1" }
      \}

function! monika_dark#GetColors()
  return s:colors
endfunction