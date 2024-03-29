

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" },
      \ "classNameColor": { "gui": "#d53a4a", "cterm": "167", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffba2f", "cterm": "214", "cterm16": "1" },
      \ "keyColor": { "gui": "#3492b1", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#090802", "cterm": "232", "cterm16": "1" },
      \ "accentColor": { "gui": "#e99745", "cterm": "173", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7c7262", "cterm": "243", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#33342F", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#191715", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#14110d", "cterm": "233", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#0a0904", "cterm": "232", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#100e09", "cterm": "232", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#144824", "cterm": "235", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#553919", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#191813", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! darkness_dark#GetColors()
  return s:colors
endfunction