

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
      \ "headerColor": { "gui": "{{headerColor}}", "cterm": "{{headerColor$x256}}", "cterm16": "1" },
      \ "accentColor": { "gui": "{{accentColor}}", "cterm": "{{accentColor$x256}}", "cterm16": "1" },
      \ "infoForeground": { "gui": "{{infoForeground}}", "cterm": "{{infoForeground$x256}}", "cterm16": "1" },
      \ "unusedColor": { "gui": "{{unusedColor}}", "cterm": "{{unusedColor$x256}}", "cterm16": "1" },
      \ "diffModified": { "gui": "{{diff.modified}}", "cterm": "{{diff.modified$x256}}", "cterm16": "1" },
      \ "diffInserted": { "gui": "{{diff.inserted}}", "cterm": "{{diff.inserted$x256}}", "cterm16": "1" },
      \ "diffDeleted": { "gui": "{{diff.deleted}}", "cterm": "{{diff.deleted$x256}}", "cterm16": "1" },
      \ "codeBlock": { "gui": "{{codeBlock}}", "cterm": "{{codeBlock$x256}}", "cterm16": "1" },
      \ "caretRow": { "gui": "{{caretRow}}", "cterm": "{{caretRow$x256}}", "cterm16": "1" },
      \ "textEditorBackground": { "gui": "{{textEditorBackground}}", "cterm": "{{textEditorBackground$x256}}", "cterm16": "1" },
      \ "terminalAnsiRed": { "gui": "{{terminal.ansiRed}}", "cterm": "{{terminal.ansiRed$x256}}", "cterm16": "1" },
      \ "terminalAnsiBlue": { "gui": "{{terminal.ansiBlue}}", "cterm": "{{terminal.ansiBlue$x256}}", "cterm16": "1" },
      \ "terminalAnsiCyan": { "gui": "{{terminal.ansiCyan}}", "cterm": "{{terminal.ansiCyan$x256}}", "cterm16": "1" },
      \ "terminalAnsiGreen": { "gui": "{{terminal.ansiGreen}}", "cterm": "{{terminal.ansiGreen$x256}}", "cterm16": "1" },
      \ "terminalAnsiMagenta": { "gui": "{{terminal.ansiMagenta}}", "cterm": "{{terminal.ansiMagenta$x256}}", "cterm16": "1" },
      \ "terminalAnsiYellow": { "gui": "{{terminal.ansiYellow}}", "cterm": "{{terminal.ansiYellow$x256}}", "cterm16": "1" },
      \ "lineNumberColor": { "gui": "{{lineNumberColor}}", "cterm": "{{lineNumberColor$x256}}", "cterm16": "1" },
      \ "lightEditorColor": { "gui": "{{lightEditorColor}}", "cterm": "{{lightEditorColor$x256}}", "cterm16": "1" },
      \ "searchForeground": { "gui": "{{searchForeground}}", "cterm": "{{searchForeground$x256}}", "cterm16": "1" },
      \ "searchBackground": { "gui": "{{searchBackground}}", "cterm": "{{searchBackground$x256}}", "cterm16": "1" },
      \ "selectionForeground": { "gui": "{{selectionForeground}}", "cterm": "{{selectionForeground$x256}}", "cterm16": "1" },
      \ "selectionBackground": { "gui": "{{selectionBackground}}", "cterm": "{{selectionBackground$x256}}", "cterm16": "1" },
      \ "foldedTextBackground": { "gui": "{{foldedTextBackground}}", "cterm": "{{foldedTextBackground$x256}}", "cterm16": "1" },
      \ "stringColor": { "gui": "{{stringColor}}", "cterm": "{{stringColor$x256}}", "cterm16": "1" }
      \}

function! {{themeName}}#GetColors()
  return s:colors
endfunction