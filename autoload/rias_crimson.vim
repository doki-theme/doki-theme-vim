

let s:colors = {
      \ "comments": { "gui": "#a47272", "cterm": "131", "cterm16": "1" },
      \ "constantColor": { "gui": "#86dbfd", "cterm": "117", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "#F8F8F2", "cterm": "255", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "#a28a92", "cterm": "246", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "#fbf96e", "cterm": "227", "cterm16": "1" },
      \ "classNameColor": { "gui": "#e03392", "cterm": "168", "cterm16": "1" },
      \ "keywordColor": { "gui": "#C04750", "cterm": "131", "cterm16": "1" },
      \ "keyColor": { "gui": "#eea367", "cterm": "215", "cterm16": "1" },
      \ "errorColor": { "gui": "#ff5555", "cterm": "203", "cterm16": "1" },
      \ "headerColor": { "gui": "#3d1313", "cterm": "233", "cterm16": "1" },
      \ "accentColor": { "gui": "#e03943", "cterm": "167", "cterm16": "1" },
      \ "caretRow": { "gui": "#491818", "cterm": "234", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "#cdb0b0", "cterm": "181", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "#451515", "cterm": "234", "cterm16": "1" },
      \ "searchForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "searchBackground": { "gui": "#181212", "cterm": "233", "cterm16": "1" },
      \ "selectionForeground": { "gui": "#fbfbfb", "cterm": "231", "cterm16": "1" },
      \ "selectionBackground": { "gui": "#822e2e", "cterm": "236", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "#491818", "cterm": "234", "cterm16": "1" },
      \ "stringColor": { "gui": "#9EB7D6", "cterm": "146", "cterm16": "1" }
      \}

function! rias_crimson#GetColors()
  return s:colors
endfunction