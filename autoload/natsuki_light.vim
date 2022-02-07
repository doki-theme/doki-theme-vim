

let s:colors = {
      \ "comments": { "gui": "#7d6a7d", "cterm": "243", "cterm16": "1" },
      \ "constantColor": { "gui": "#4C94D6", "cterm": "68", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#7B6970", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "classNameColor": { "gui": "#df81b8", "cterm": "175", "cterm16": "1" },
      \ "keywordColor": { "gui": "#C869A3", "cterm": "169", "cterm16": "1" },
      \ "keyColor": { "gui": "#7C75EF", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#FFE0F0", "cterm": "225", "cterm16": "1" },
      \ "accentColor": { "gui": "#E94686", "cterm": "168", "cterm16": "1" },
      \ "infoForeground": { "gui": "#dd87a1", "cterm": "175", "cterm16": "1" },
      \ "unusedColor": { "gui": "#B7B7B7", "cterm": "249", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EBD1DE", "cterm": "253", "cterm16": "1" },
      \ "codeBlock": { "gui": "#FDD8FF", "cterm": "225", "cterm16": "1" },
      \ "caretRow": { "gui": "#ffdce6", "cterm": "224", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#FFE5F1", "cterm": "225", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#3ab55b", "cterm": "71", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#db974d", "cterm": "173", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#aaaaaa", "cterm": "248", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#ffe0ea", "cterm": "224", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#dc99bb", "cterm": "175", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#f049da", "cterm": "206", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#fcc9f2", "cterm": "225", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#F1E5FA", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#DC872E", "cterm": "172", "cterm16": "1" }
      \}

function! natsuki_light#GetColors()
  return s:colors
endfunction