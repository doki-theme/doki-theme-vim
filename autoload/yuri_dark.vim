

let s:colors = {
      \ "comments": { "gui": "#8B79B4", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86FDB6", "cterm": "121", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#E7A1FA", "cterm": "183", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#DC74FF", "cterm": "177", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#B17BFD", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#F1FF86", "cterm": "228", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#442e5c", "cterm": "238", "cterm16": "1" },
      \ "accentColor": { "gui": "#AB47BC", "cterm": "133", "cterm16": "1" },
      \ "infoForeground": { "gui": "#9d52ab", "cterm": "133", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#204b21", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#453C4A", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3e2955", "cterm": "237", "cterm16": "1" },
      \ "caretRow": { "gui": "#473466", "cterm": "238", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#422D5A", "cterm": "238", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6f6679", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#453161", "cterm": "238", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e5f3", "cterm": "254", "cterm16": "1" },
      \ "searchBackground": { "gui": "#B24CB6", "cterm": "133", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#CCBEFF", "cterm": "183", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#663995", "cterm": "60", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3C1D55", "cterm": "237", "cterm16": "1" },
      \ "stringColor": { "gui": "#B6B3FF", "cterm": "147", "cterm16": "1" }
      \}

function! yuri_dark#GetColors()
  return s:colors
endfunction