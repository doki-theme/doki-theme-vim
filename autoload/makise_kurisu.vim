

let s:colors = {
      \ "comments": { "gui": "#8B6868", "cterm": "95", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#bca3aa", "cterm": "248", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#DEC4AA", "cterm": "187", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EC5D61", "cterm": "203", "cterm16": "1" },
      \ "keywordColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keyColor": { "gui": "#FF8C74", "cterm": "210", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF0000", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#1a0e0e", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#8F60B5", "cterm": "97", "cterm16": "1" },
      \ "infoForeground": { "gui": "#843030", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "diffModified": { "gui": "#132940", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#102413", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#232121", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#231314", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#261112", "cterm": "233", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#170a0b", "cterm": "232", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#624849", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#1d0c0d", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#3F2E73", "cterm": "237", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#391717", "cterm": "234", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#231010", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#4593f5", "cterm": "69", "cterm16": "1" }
      \}

function! makise_kurisu#GetColors()
  return s:colors
endfunction