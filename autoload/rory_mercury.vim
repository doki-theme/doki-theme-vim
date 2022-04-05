

let s:colors = {
      \ "comments": { "gui": "#9A6262", "cterm": "95", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#666f71", "cterm": "242", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#FF4556", "cterm": "203", "cterm16": "1" },
      \ "classNameColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "keywordColor": { "gui": "#e0474b", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#7F8E90", "cterm": "245", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF8484", "cterm": "210", "cterm16": "1" },
      \ "headerColor": { "gui": "#18181b", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#b53241", "cterm": "131", "cterm16": "1" },
      \ "infoForeground": { "gui": "#843030", "cterm": "236", "cterm16": "1" },
      \ "unusedColor": { "gui": "#515158", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#132940", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#102413", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#232121", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#191715", "cterm": "233", "cterm16": "1" },
      \ "caretRow": { "gui": "#1a1a1d", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#141417", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#796666", "cterm": "242", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#18181b", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#265579", "cterm": "24", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#502121", "cterm": "235", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#191813", "cterm": "233", "cterm16": "1" },
      \ "stringColor": { "gui": "#58A0F8", "cterm": "75", "cterm16": "1" }
      \}

function! rory_mercury#GetColors()
  return s:colors
endfunction