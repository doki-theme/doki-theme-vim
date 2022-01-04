

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ff69df", "cterm": "206", "cterm16": "1" },
      \ "classNameColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "keywordColor": { "gui": "#8b8b8b", "cterm": "245", "cterm16": "1" },
      \ "keyColor": { "gui": "#5ea7ff", "cterm": "75", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#17191b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#5395b4", "cterm": "67", "cterm16": "1" },
      \ "infoForeground": { "gui": "#ab8d9f", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#142F14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#262626", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1f2123", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#222526", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#191b1d", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1e2122", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#326283", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#452735", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#343434", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! mioda_ibuki_dark#GetColors()
  return s:colors
endfunction