

let s:colors = {
      \ "comments": { "gui": "#9277a7", "cterm": "103", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#BC60CB", "cterm": "134", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FF9CD6", "cterm": "218", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e049b0", "cterm": "169", "cterm16": "1" },
      \ "keyColor": { "gui": "#a475ef", "cterm": "141", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#4c2e5c", "cterm": "239", "cterm16": "1" },
      \ "accentColor": { "gui": "#a53ba0", "cterm": "133", "cterm16": "1" },
      \ "infoForeground": { "gui": "#a775ab", "cterm": "139", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#204b21", "cterm": "235", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#4E4151", "cterm": "239", "cterm16": "1" },
      \ "codeBlock": { "gui": "#442a55", "cterm": "238", "cterm16": "1" },
      \ "caretRow": { "gui": "#543466", "cterm": "240", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#503161", "cterm": "239", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e5f3", "cterm": "254", "cterm16": "1" },
      \ "searchBackground": { "gui": "#7749b2", "cterm": "97", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#d29eff", "cterm": "183", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#51256d", "cterm": "53", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#402a54", "cterm": "238", "cterm16": "1" },
      \ "stringColor": { "gui": "#FDEFA2", "cterm": "229", "cterm16": "1" }
      \}

function! emilia_dark#GetColors()
  return s:colors
endfunction