

let s:colors = {
      \ "comments": { "gui": "#B0C0FC", "cterm": "147", "cterm16": "1" },
      \ "constantColor": { "gui": "#f6be8b", "cterm": "216", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#f4ffa2", "cterm": "229", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#60ff62", "cterm": "83", "cterm16": "1" },
      \ "classNameColor": { "gui": "#cda8fa", "cterm": "183", "cterm16": "1" },
      \ "keywordColor": { "gui": "#ffc9d7", "cterm": "224", "cterm16": "1" },
      \ "keyColor": { "gui": "#fffd9b", "cterm": "228", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#314978", "cterm": "238", "cterm16": "1" },
      \ "accentColor": { "gui": "#4bcf4c", "cterm": "77", "cterm16": "1" },
      \ "infoForeground": { "gui": "#addfa9", "cterm": "151", "cterm16": "1" },
      \ "unusedColor": { "gui": "#A5A1A1", "cterm": "247", "cterm16": "1" },
      \ "diffModified": { "gui": "#3C64C9", "cterm": "62", "cterm16": "1" },
      \ "diffInserted": { "gui": "#1E6168", "cterm": "23", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#4F6387", "cterm": "60", "cterm16": "1" },
      \ "codeBlock": { "gui": "#3e5f99", "cterm": "60", "cterm16": "1" },
      \ "caretRow": { "gui": "#3d5d96", "cterm": "60", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#355082", "cterm": "60", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#FF7AB2", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#B39AFF", "cterm": "141", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#6DD6EE", "cterm": "81", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#54ea7c", "cterm": "78", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#FF91BF", "cterm": "211", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#fdaa39", "cterm": "215", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#3a588e", "cterm": "60", "cterm16": "1" },
      \ "searchForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "searchBackground": { "gui": "#6a527e", "cterm": "60", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#e7e9ff", "cterm": "255", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#3a6c75", "cterm": "242", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#3b5a91", "cterm": "60", "cterm16": "1" },
      \ "stringColor": { "gui": "#fc9ee6", "cterm": "218", "cterm16": "1" }
      \}

function! konata#GetColors()
  return s:colors
endfunction