

let s:colors = {
      \ "comments": { "gui": "#6272a4", "cterm": "61", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#666f71", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#b53241", "cterm": "131", "cterm16": "1" },
      \ "classNameColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#6b7476", "cterm": "243", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#18181b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#b53241", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#843030", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#191715", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#1a1a1d", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#796666", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#18181b", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#265579", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#391717", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#191813", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! rory_mercury#GetColors()
  return s:colors
endfunction