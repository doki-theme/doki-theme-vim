

let s:colors = {
      \ "comments": { "gui": "#677684", "cterm": "66", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8C90E5", "cterm": "104", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#e4ff10", "cterm": "190", "cterm16": "1" },
      \ "classNameColor": { "gui": "#6893f3", "cterm": "69", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#99B6D5", "cterm": "110", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#2b3238", "cterm": "236", "cterm16": "1" },
      \ "accentColor": { "gui": "#a73035", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#6e707a", "cterm": "243", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#173D17", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#3C4246", "cterm": "238", "cterm16": "1" },
      \ "codeBlock": { "gui": "#292e34", "cterm": "236", "cterm16": "1" },
      \ "caretRow": { "gui": "#2a3037", "cterm": "236", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#2b3238", "cterm": "236", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#666879", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#2a3137", "cterm": "236", "cterm16": "1" },
      \ "searchForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "searchBackground": { "gui": "#2C5277", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#E2CB14", "cterm": "184", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#563036", "cterm": "237", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#272e34", "cterm": "236", "cterm16": "1" },
      \ "stringColor": { "gui": "#efa554", "cterm": "215", "cterm16": "1" }
      \}

function! ryuko_dark#GetColors()
  return s:colors
endfunction