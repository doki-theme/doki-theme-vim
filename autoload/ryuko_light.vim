

let s:colors = {
      \ "comments": { "gui": "#505D64", "cterm": "59", "cterm16": "1" },
      \ "constantColor": { "gui": "#005CC5", "cterm": "26", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#4D4D4A", "cterm": "239", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#2811B9", "cterm": "19", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#EE5C09", "cterm": "202", "cterm16": "1" },
      \ "classNameColor": { "gui": "#7748B7", "cterm": "97", "cterm16": "1" },
      \ "keywordColor": { "gui": "#B03F0F", "cterm": "130", "cterm16": "1" },
      \ "keyColor": { "gui": "#007972", "cterm": "29", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff2525", "cterm": "196", "cterm16": "1" },
      \ "headerColor": { "gui": "#f5f6f7", "cterm": "255", "cterm16": "1" },
      \ "accentColor": { "gui": "#169ef2", "cterm": "39", "cterm16": "1" },
      \ "infoForeground": { "gui": "#1f79a1", "cterm": "31", "cterm16": "1" },
      \ "unusedColor": { "gui": "#92ABAB", "cterm": "109", "cterm16": "1" },
      \ "diffModified": { "gui": "#9fe7ff", "cterm": "153", "cterm16": "1" },
      \ "diffInserted": { "gui": "#D0FDC9", "cterm": "194", "cterm16": "1" },
      \ "diffDeleted": { "gui": "#EBEBEB", "cterm": "255", "cterm16": "1" },
      \ "codeBlock": { "gui": "#bff8e2", "cterm": "158", "cterm16": "1" },
      \ "caretRow": { "gui": "#e6effc", "cterm": "255", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "#ffffff", "cterm": "231", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "#E356A7", "cterm": "169", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "#5C358D", "cterm": "60", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "#0896AD", "cterm": "31", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "#208D3B", "cterm": "29", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "#E64747", "cterm": "167", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "#916121", "cterm": "94", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#344f69", "cterm": "239", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#f0f5fd", "cterm": "255", "cterm16": "1" },
      \ "searchForeground": { "gui": "#161165", "cterm": "17", "cterm16": "1" },
      \ "searchBackground": { "gui": "#BAB0F3", "cterm": "147", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#103365", "cterm": "23", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#74adec", "cterm": "111", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#f6f6f6", "cterm": "255", "cterm16": "1" },
      \ "stringColor": { "gui": "#0F92E3", "cterm": "32", "cterm16": "1" }
      \}

function! ryuko_light#GetColors()
  return s:colors
endfunction