

let s:colors = {
      \ "comments": { "gui": "#908250", "cterm": "101", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#2811B9", "cterm": "19", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#810808", "cterm": "88", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#B03F0F", "cterm": "130", "cterm16": "1" },
      \ "keyColor": { "gui": "#007972", "cterm": "29", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "caretRow": { "gui": "#FFC392", "cterm": "216", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#693434", "cterm": "237", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#ffc892", "cterm": "222", "cterm16": "1" },
      \ "searchForeground": { "gui": "#651c10", "cterm": "52", "cterm16": "1" },
      \ "searchBackground": { "gui": "#AFF16A", "cterm": "155", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#651c10", "cterm": "52", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#ec9e74", "cterm": "216", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#FABD8C", "cterm": "216", "cterm16": "1" },
      \ "stringColor": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" }
      \}

function! maple_light#GetColors()
  return s:colors
endfunction