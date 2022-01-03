

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
      \ "caretRow": { "gui": "#FFF6E4", "cterm": "230", "cterm16": "1" },
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