

let s:colors = {
      \ "comments": { "gui": "#6C524E", "cterm": "239", "cterm16": "1" },
      \ "constantColor": { "gui": "#9DACF6", "cterm": "147", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#A884EF", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" },
      \ "classNameColor": { "gui": "#ffba2f", "cterm": "214", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ff858c", "cterm": "210", "cterm16": "1" },
      \ "keyColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#110c15", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#e86a44", "cterm": "167", "cterm16": "1" },
      \ "infoForeground": { "gui": "#c08865", "cterm": "137", "cterm16": "1" },
      \ "unusedColor": { "gui": "#72737A", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#152E41", "cterm": "236", "cterm16": "1" },
      \ "diffInserted": { "gui": "#0F230F", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#251E1C", "cterm": "234", "cterm16": "1" },
      \ "codeBlock": { "gui": "#250a29", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#2d0d0d", "cterm": "233", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#200909", "cterm": "232", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#F8E3D7", "cterm": "224", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#280b0b", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#49357C", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#622316", "cterm": "52", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#340e0e", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#F6E3CC", "cterm": "224", "cterm16": "1" }
      \}

function! nakano_yotsuba#GetColors()
  return s:colors
endfunction