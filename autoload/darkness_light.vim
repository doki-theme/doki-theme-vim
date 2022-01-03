

let s:colors = {
      \ "comments": { "gui": "#6a737d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#22863a", "cterm": "29", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b6323f", "cterm": "131", "cterm16": "1" },
      \ "classNameColor": { "gui": "#c79c19", "cterm": "178", "cterm16": "1" },
      \ "keywordColor": { "gui": "#E36207", "cterm": "166", "cterm16": "1" },
      \ "keyColor": { "gui": "#3492b1", "cterm": "67", "cterm16": "1" },
      \ "stringColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" }
      \}

function! darkness_light#GetColors()
  return s:colors
endfunction