

let s:colors = {
      \ "comments": { "gui": "#57745D", "cterm": "65", "cterm16": "1" },
      \ "constantColor": { "gui": "#2FAAF6", "cterm": "39", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#82B1EE", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#66FA36", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#FFD448", "cterm": "221", "cterm16": "1" },
      \ "keywordColor": { "gui": "#FDB8EB", "cterm": "218", "cterm16": "1" },
      \ "keyColor": { "gui": "#B9F8BC", "cterm": "157", "cterm16": "1" },
      \ "errorColor": { "gui": "#FF0000", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#150a0e", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#1ecd86", "cterm": "42", "cterm16": "1" },
      \ "infoForeground": { "gui": "#5c9077", "cterm": "66", "cterm16": "1" },
      \ "unusedColor": { "gui": "#6F7B6F", "cterm": "243", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#143613", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#2F292D", "cterm": "236", "cterm16": "1" },
      \ "codeBlock": { "gui": "#161a2e", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#261d21", "cterm": "235", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#17070e", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#53615B", "cterm": "240", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#222027", "cterm": "235", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fafafa", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#872847", "cterm": "89", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#174a2e", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#21191d", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#39e6a6", "cterm": "79", "cterm16": "1" }
      \}

function! zero_two_dark_obsidian#GetColors()
  return s:colors
endfunction