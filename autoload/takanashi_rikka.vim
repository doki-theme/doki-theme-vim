

let s:colors = {
      \ "comments": { "gui": "#bf88a4", "cterm": "139", "cterm16": "1" },
      \ "constantColor": { "gui": "#F9FC88", "cterm": "228", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#AC99FC", "cterm": "141", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#65CDFA", "cterm": "81", "cterm16": "1" },
      \ "classNameColor": { "gui": "#67F5C4", "cterm": "86", "cterm16": "1" },
      \ "keywordColor": { "gui": "#de4371", "cterm": "167", "cterm16": "1" },
      \ "keyColor": { "gui": "#8C92FC", "cterm": "105", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#1d1926", "cterm": "234", "cterm16": "1" },
      \ "accentColor": { "gui": "#dd2a62", "cterm": "161", "cterm16": "1" },
      \ "infoForeground": { "gui": "#bd7e99", "cterm": "138", "cterm16": "1" },
      \ "unusedColor": { "gui": "#5c5157", "cterm": "240", "cterm16": "1" },
      \ "diffModified": { "gui": "#1B2B4B", "cterm": "235", "cterm16": "1" },
      \ "diffInserted": { "gui": "#0F2F1D", "cterm": "234", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#292231", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#351929", "cterm": "235", "cterm16": "1" },
      \ "caretRow": { "gui": "#2b233a", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#1e1928", "cterm": "234", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#8e6e7b", "cterm": "96", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#261f33", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#277FA5", "cterm": "31", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#761d3a", "cterm": "89", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#2b2538", "cterm": "235", "cterm16": "1" },
      \ "stringColor": { "gui": "#FFB4F8", "cterm": "219", "cterm16": "1" }
      \}

function! takanashi_rikka#GetColors()
  return s:colors
endfunction