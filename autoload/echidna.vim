

let s:colors = {
      \ "comments": { "gui": "#41495A", "cterm": "238", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#8daeef", "cterm": "111", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#7ceec8", "cterm": "122", "cterm16": "1" },
      \ "classNameColor": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "keywordColor": { "gui": "#8b8b8b", "cterm": "245", "cterm16": "1" },
      \ "keyColor": { "gui": "#BD93F9", "cterm": "141", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#171519", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#ECECEC", "cterm": "255", "cterm16": "1" },
      \ "infoForeground": { "gui": "#75aaab", "cterm": "109", "cterm16": "1" },
      \ "unusedColor": { "gui": "#3D3D42", "cterm": "237", "cterm16": "1" },
      \ "diffModified": { "gui": "#203952", "cterm": "237", "cterm16": "1" },
      \ "diffInserted": { "gui": "#142F14", "cterm": "233", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#262626", "cterm": "235", "cterm16": "1" },
      \ "codeBlock": { "gui": "#1e1b20", "cterm": "234", "cterm16": "1" },
      \ "caretRow": { "gui": "#1a171c", "cterm": "234", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#121014", "cterm": "233", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#9B6BDF", "cterm": "98", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#75D7EC", "cterm": "117", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#42E66C", "cterm": "77", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#EFA554", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#6f7779", "cterm": "243", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#171419", "cterm": "233", "cterm16": "1" },
      \ "searchForeground": { "gui": "#ebd6fc", "cterm": "189", "cterm16": "1" },
      \ "searchBackground": { "gui": "#5a3b5d", "cterm": "240", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#274540", "cterm": "238", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#1b181d", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#f4fa8c", "cterm": "228", "cterm16": "1" }
      \}

function! echidna#GetColors()
  return s:colors
endfunction