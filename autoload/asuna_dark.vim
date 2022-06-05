

let s:colors = {
      \ "comments": { "gui": "#5C6276", "cterm": "60", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#FF6363", "cterm": "203", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#579DFA", "cterm": "75", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7ECAFA", "cterm": "117", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#FCA57E", "cterm": "216", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#1e1e1e", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#99202c", "cterm": "88", "cterm16": "1" },
      \ "infoForeground": { "gui": "#7a3f41", "cterm": "238", "cterm16": "1" },
      \ "unusedColor": { "gui": "#65656B", "cterm": "241", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1B3B1C", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#323234", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#232323", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#272727", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1b1b1b", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#5d5051", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d1d1d", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#0e0505", "cterm": "232", "cterm16": "1" },
      \ "searchBackground": { "gui": "#A8A117", "cterm": "142", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#531616", "cterm": "52", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#212121", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFD86E", "cterm": "221", "cterm16": "1" }
      \}

function! asuna_dark#GetColors()
  return s:colors
endfunction