

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#22863a", "cterm": "29", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b6323f", "cterm": "131", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c79c19", "cterm": "178", "cterm16": "1" },
      \ "keywordColor": { "gui": "#E36207", "cterm": "166", "cterm16": "1" },
      \ "keyColor": { "gui": "#3492b1", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#FFFEF9", "cterm": "231", "cterm16": "1" },
      \ "accentColor": { "gui": "#F5C83C", "cterm": "221", "cterm16": "1" },
      \ "infoForeground": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#E9E6DB", "cterm": "254", "cterm16": "1" },
      \ "codeBlock": { "gui": "#f4f3ee", "cterm": "255", "cterm16": "1" },
      \ "caretRow": { "gui": "#FFF6E4", "cterm": "230", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FFFEF9", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#fff9ec", "cterm": "231", "cterm16": "1" },
      \ "searchForeground": { "gui": "#366906", "cterm": "58", "cterm16": "1" },
      \ "searchBackground": { "gui": "#C1FFBA", "cterm": "157", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#A8930A", "cterm": "136", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#fff3b4", "cterm": "229", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#F3F2E2", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" }
      \}

function! darkness_light#GetColors()
  return s:colors
endfunction