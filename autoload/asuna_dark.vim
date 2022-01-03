

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#e53935", "cterm": "167", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "classNameColor": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#3B82BD", "cterm": "67", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1e1e1e", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#99202c", "cterm": "88", "cterm16": "1" },
      \ "caretRow": { "gui": "#1f1f1f", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d5051", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d1d1d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#0e0505", "cterm": "232", "cterm16": "1" },
      \ "searchBackground": { "gui": "#A8A117", "cterm": "142", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#391717", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#212121", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#f5cc5a", "cterm": "221", "cterm16": "1" }
      \}

function! asuna_dark#GetColors()
  return s:colors
endfunction