

let s:colors = {
      \ "comments": { "gui": "{{comments}}", "cterm": "{{comments$x256}}", "cterm16": "1" },
      \ "constantColor": { "gui": "{{constantColor}}", "cterm": "{{constantColor$x256}}", "cterm16": "1" },
      \ "foregroundColorEditor": { "gui": "{{foregroundColorEditor}}", "cterm": "{{foregroundColorEditor$x256}}", "cterm16": "1" },
      \ "htmlTagColor": { "gui": "{{htmlTagColor}}", "cterm": "{{htmlTagColor$x256}}", "cterm16": "1" },
      \ "editorAccentColor": { "gui": "{{editorAccentColor}}", "cterm": "{{editorAccentColor$x256}}", "cterm16": "1" },
      \ "classNameColor": { "gui": "{{classNameColor}}", "cterm": "{{classNameColor$x256}}", "cterm16": "1" },
      \ "keywordColor": { "gui": "{{keywordColor}}", "cterm": "{{keywordColor$x256}}", "cterm16": "1" },
      \ "keyColor": { "gui": "{{keyColor}}", "cterm": "{{keyColor$x256}}", "cterm16": "1" },
      \ "errorColor": { "gui": "{{errorColor}}", "cterm": "{{errorColor$x256}}", "cterm16": "1" },
      \ "stringColor": { "gui": "{{stringColor}}", "cterm": "{{stringColor$x256}}", "cterm16": "1" }
      \}

function! {{themeName}}#GetColors()
  return s:colors
endfunction