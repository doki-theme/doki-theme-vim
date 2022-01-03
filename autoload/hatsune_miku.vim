

let s:colors = {
      \ "comments": { "gui": "#67807b", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#60a498", "cterm": "72", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#ff69df", "cterm": "206", "cterm16": "1" },
      \ "classNameColor": { "gui": "#aae2f2", "cterm": "153", "cterm16": "1" },
      \ "keywordColor": { "gui": "#988F9A", "cterm": "246", "cterm16": "1" },
      \ "keyColor": { "gui": "#68f3e7", "cterm": "86", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2c3333", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#53b0b4", "cterm": "73", "cterm16": "1" },
      \ "infoForeground": { "gui": "#73999b", "cterm": "246", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#393F3A", "cterm": "237", "cterm16": "1" },
      \ "codeBlock": { "gui": "#2b3231", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#313938", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#303837", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#654773", "cterm": "241", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#4c7a76", "cterm": "243", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#273431", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E9CB", "cterm": "224", "cterm16": "1" }
      \}

function! hatsune_miku#GetColors()
  return s:colors
endfunction