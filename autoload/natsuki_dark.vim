

let s:colors = {
      \ "comments": { "gui": "#A179A7", "cterm": "139", "cterm16": "1" },
      \ "constantColor": { "gui": "#9286FD", "cterm": "105", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#EBABFD", "cterm": "183", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keyColor": { "gui": "#9DC0FF", "cterm": "147", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2f0a27", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "infoForeground": { "gui": "#b74170", "cterm": "131", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#362B31", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3d1c31", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#441539", "cterm": "237", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#35102c", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#796675", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3e1334", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#6d4cb9", "cterm": "61", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e6afca", "cterm": "182", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#602b50", "cterm": "239", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#441a35", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! natsuki_dark#GetColors()
  return s:colors
endfunction