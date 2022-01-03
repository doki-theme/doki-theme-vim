

let s:colors = {
      \ "comments": { "gui": "#786598", "cterm": "96", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6AADFF", "cterm": "75", "cterm16": "1" },
      \ "keywordColor": { "gui": "#BD84DD", "cterm": "140", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF357C", "cterm": "204", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#3d2536", "cterm": "237", "cterm16": "1" },
      \ "accentColor": { "gui": "#c2383e", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#8c72a9", "cterm": "97", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "codeBlock": { "gui": "#322130", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#402d41", "cterm": "237", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3d2a3d", "cterm": "237", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#278650", "cterm": "29", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#8a2b4d", "cterm": "89", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#322130", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#FAF7BA", "cterm": "229", "cterm16": "1" }
      \}

function! katsuragi_misato#GetColors()
  return s:colors
endfunction