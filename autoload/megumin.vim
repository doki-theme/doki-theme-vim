

let s:colors = {
      \ "comments": { "gui": "#726868", "cterm": "242", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#dae838", "cterm": "185", "cterm16": "1" },
      \ "keywordColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#AF5C5A", "cterm": "131", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2a1f24", "cterm": "235", "cterm16": "1" },
      \ "accentColor": { "gui": "#a73035", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#75595d", "cterm": "95", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2f2329", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#31262b", "cterm": "235", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#7b7373", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2f2429", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "searchBackground": { "gui": "#851B2A", "cterm": "88", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#563036", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#33282d", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#ffd866", "cterm": "221", "cterm16": "1" }
      \}

function! megumin#GetColors()
  return s:colors
endfunction