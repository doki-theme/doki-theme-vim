if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rimiru_tempest'

set t_Co=256

" Set to "256" for 256-color terminals, or
" set to "16" to use your terminal emulator's native colors
" (a 16-color palette for this color scheme is available; see
" < https://github.com/joshdick/
" for more information.)
if !exists("g:rimiru_tempest_termcolors")
  let g:rimiru_tempest_termcolors = 256
endif

" Not all terminals support italics properly. If yours does, opt-in.
if !exists("g:rimiru_tempest_terminal_italics")
  let g:rimiru_tempest_terminal_italics = 0
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" This function is based on one from FlatColor: https://github.com/MaxSt/FlatColor/
" Which in turn was based on one found in hemisu: https://github.com/noahfrederick/vim-hemisu/
let s:group_colors = {} " Cache of default highlight group settings, for later reference via `
function! s:h(group, style, ...)
  if (a:0 > 0) " Will be true if we got here from 
    let s:highlight = s:group_colors[a:group]
    for style_type in ["fg", "bg", "sp"]
      if (has_key(a:style, style_type))
        let l:default_style = (has_key(s:highlight, style_type) ? copy(s:highlight[style_type]) : { "cterm16": "NONE", "cterm": "NONE", "gui": "NONE" })
        let s:highlight[style_type] = extend(l:default_style, a:style[style_type])
      endif
    endfor
    if (has_key(a:style, "gui"))
      let s:highlight.gui = a:style.gui
    endif
  else
    let s:highlight = a:style
    let s:group_colors[a:group] = s:highlight " Cache default highlight group settings
  endif

  if g:rimiru_tempest_terminal_italics == 0
    if has_key(s:highlight, "cterm") && s:highlight["cterm"] == "italic"
      unlet s:highlight.cterm
    endif
    if has_key(s:highlight, "gui") && s:highlight["gui"] == "italic"
      unlet s:highlight.gui
    endif
  endif

  if g:rimiru_tempest_termcolors == 16
    let l:ctermfg = (has_key(s:highlight, "fg") ? s:highlight.fg.cterm16 : "NONE")
    let l:ctermbg = (has_key(s:highlight, "bg") ? s:highlight.bg.cterm16 : "NONE")
  else
    let l:ctermfg = (has_key(s:highlight, "fg") ? s:highlight.fg.cterm : "NONE")
    let l:ctermbg = (has_key(s:highlight, "bg") ? s:highlight.bg.cterm : "NONE")
  endif

  execute "highlight" a:group
    \ "guifg="   (has_key(s:highlight, "fg")    ? s:highlight.fg.gui   : "NONE")
    \ "guibg="   (has_key(s:highlight, "bg")    ? s:highlight.bg.gui   : "NONE")
    \ "guisp="   (has_key(s:highlight, "sp")    ? s:highlight.sp.gui   : "NONE")
    \ "gui="     (has_key(s:highlight, "gui")   ? s:highlight.gui      : "NONE")
    \ "ctermfg=" . l:ctermfg
    \ "ctermbg=" . l:ctermbg
    \ "cterm="   (has_key(s:highlight, "cterm") ? s:highlight.cterm    : "NONE")
endfunction

let s:colors = rimiru_tempest#GetColors() " Autoloaded from the specific color theme

" Global colors
call s:h("Comment", { "fg": s:colors.comments, "gui": "italic", "cterm": "italic" })
call s:h("String", {"fg": s:colors.stringColor})
call s:h("Constant", {"fg": s:colors.constantColor})
call s:h("Identifier", {"fg": s:colors.foregroundColorEditor})
call s:h("Function", {"fg": s:colors.classNameColor})
call s:h("Underlined", {"fg": s:colors.keyColor})
call s:h("Type", {"fg": s:colors.keyColor})
call s:h("PreProc", {"fg": s:colors.keyColor})
call s:h("StorageClass", {"fg": s:colors.keywordColor})
call s:h("Keyword", {"fg": s:colors.keywordColor})
call s:h("Statement", {"fg": s:colors.keywordColor})
call s:h("SpecialChar", {"fg": s:colors.keyColor})
call s:h("SpecialComment", {"fg": s:colors.keyColor})
call s:h("Special", {"fg": s:colors.keyColor})
call s:h("Operator", {"fg": s:colors.htmlTagColor})
call s:h("foldBraces", {"fg": s:colors.foregroundColorEditor})
call s:h("Error", {"fg": s:colors.errorColor, "gui": "underline", "cterm":"underline"})

" VIM Stuff
call s:h("Cursor", {"bg": s:colors.accentColor})
call s:h("ColorColumn", {"bg": s:colors.caretRow})
call s:h("CursorColumn", {"bg": s:colors.caretRow})
call s:h("CursorLine", {"bg": s:colors.caretRow})
call s:h("DiffAdd", {"bg": s:colors.diffInserted})
call s:h("DiffChange", {"bg": s:colors.diffModified})
call s:h("DiffDelete", {"bg": s:colors.diffDeleted})
call s:h("DiffText", {"bg": s:colors.diffModified})
call s:h("LineNr", {"fg": s:colors.lineNumberColor})
call s:h("Pmenu", {"fg": s:colors.foregroundColorEditor})
call s:h("Normal", {"fg": s:colors.foregroundColorEditor})
call s:h("NonText", {"fg": s:colors.comments})
call s:h("ModeMsg", {"fg": s:colors.infoForeground})
call s:h("PmenuSbar", {"bg": s:colors.lightEditorColor})
call s:h("PmenuThumb", {"bg": s:colors.accentColor})
call s:h("ErrorMsg", {"bg": s:colors.errorColor})
call s:h("VertSplit", {"fg": s:colors.lineNumberColor, "bg": s:colors.lightEditorColor})
call s:h("StatusLine", {"fg": s:colors.foregroundColorEditor, "bg": s:colors.lightEditorColor})
call s:h("StatusLineNc", {"fg": s:colors.lineNumberColor, "bg": s:colors.lightEditorColor})
call s:h("Search", {"fg": s:colors.searchForeground, "bg": s:colors.searchBackground})
call s:h("IncSearch", {"fg": s:colors.searchForeground, "bg": s:colors.searchBackground})
call s:h("MatchParen", {"fg": s:colors.searchForeground, "bg": s:colors.searchBackground})
call s:h("Visual", {"fg": s:colors.selectionForeground, "bg": s:colors.selectionBackground})
call s:h("PmenuSel", {"fg": s:colors.selectionForeground, "bg": s:colors.selectionBackground})
call s:h("Folded", {"fg": s:colors.comments, "bg": s:colors.foldedTextBackground})

" Git
call s:h("gitcommitHeader", { "fg": s:colors.classNameColor})

" Shell
call s:h("shQuote", { "fg": s:colors.stringColor})
call s:h("shSingleQuote", { "fg": s:colors.stringColor})
call s:h("shHereDoc", { "fg": s:colors.stringColor, "bg": s:colors.codeBlock})
call s:h("shDoubleQuote", { "fg": s:colors.stringColor})

" XML
call s:h("xmlAttrib", { "fg": s:colors.editorAccentColor})
call s:h("xmlDoctype", { "fg": s:colors.editorAccentColor})
call s:h("xmlDocTypeKeyword", { "fg": s:colors.htmlTagColor})
call s:h("xmlDocTypeDecl", { "fg": s:colors.htmlTagColor})
call s:h("xmlTag", { "fg": s:colors.foregroundColorEditor})
call s:h("xmlTagName", { "fg": s:colors.htmlTagColor})
call s:h("xmlEntity", { "fg": s:colors.constantColor})
call s:h("xmlEntityPunct", { "fg": s:colors.constantColor})
call s:h("xmlCdata", { "fg": s:colors.stringColor})
call s:h("xmlString", { "fg": s:colors.stringColor})
call s:h("xmlCdataStart", { "fg": s:colors.keywordColor})
call s:h("xmlCdataEnd", { "fg": s:colors.keywordColor})
call s:h("xmlCdataCdata", { "fg": s:colors.keywordColor})

" Vim Script
call s:h("vimOption", { "fg": s:colors.keyColor})
call s:h("vimFuncName", { "fg": s:colors.editorAccentColor})
call s:h("vimUserFunc", { "fg": s:colors.editorAccentColor})
call s:h("vimParenSep", { "fg": s:colors.foregroundColorEditor})
call s:h("vimCommand", { "fg": s:colors.keywordColor})
call s:h("vimLet", { "fg": s:colors.keywordColor})
call s:h("vimNotFunc", { "fg": s:colors.keywordColor})
call s:h("vimIsCommand", { "fg": s:colors.classNameColor})

" HTML
call s:h("htmlTagName", { "fg": s:colors.htmlTagColor})
call s:h("htmlEndTag", { "fg": s:colors.htmlTagColor})
call s:h("htmlEndTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlHead", { "fg": s:colors.htmlTagColor})
call s:h("htmlSpecialTagName", { "fg": s:colors.htmlTagColor})
call s:h("htmlArg", { "fg": s:colors.editorAccentColor, "gui": "italic", "cterm": "italic"})
call s:h("htmlTagN", { "fg": s:colors.htmlTagColor})
call s:h("htmlScriptTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlTag", { "fg": s:colors.foregroundColorEditor})
call s:h("htmlTitle", { "fg": s:colors.stringColor})
call s:h("htmlH1", { "fg": s:colors.stringColor })
call s:h("htmlH2", { "fg": s:colors.stringColor })
call s:h("htmlH3", { "fg": s:colors.stringColor })
call s:h("htmlH4", { "fg": s:colors.stringColor })
call s:h("htmlH5", { "fg": s:colors.stringColor })
call s:h("htmlH6", { "fg": s:colors.stringColor })
call s:h("htmlLink", { "fg": s:colors.keyColor })
call s:h("htmlSpecialChar", { "fg": s:colors.keywordColor})

" Markdown
call s:h("markdownH1", { "fg": s:colors.classNameColor})
call s:h("markdownH2", { "fg": s:colors.classNameColor})
call s:h("markdownH3", { "fg": s:colors.classNameColor})
call s:h("markdownH4", { "fg": s:colors.classNameColor})
call s:h("markdownH5", { "fg": s:colors.classNameColor})
call s:h("markdownH6", { "fg": s:colors.classNameColor})
call s:h("markdownH7", { "fg": s:colors.classNameColor})
call s:h("markdownHeadingRule", { "fg": s:colors.classNameColor})
call s:h("markdownBoldDelimiter", { "fg": s:colors.keywordColor})
call s:h("markdownItalicDelimiter", { "fg": s:colors.keywordColor})
call s:h("markdownAutomaticLink", { "fg": s:colors.keyColor})
call s:h("markdownUrl", { "fg": s:colors.keyColor})
call s:h("markdownUrlDelimiter", { "fg": s:colors.keyColor})
call s:h("markdownLinkDelimiter", { "fg": s:colors.keyColor})
call s:h("markdownLinkTextDelimiter", { "fg": s:colors.editorAccentColor})
call s:h("markdownLinkText", { "fg": s:colors.editorAccentColor})
call s:h("markdownId", { "fg": s:colors.keyColor})
call s:h("markdownUrlTitle", { "fg": s:colors.comments})
call s:h("markdownCode", { "fg": s:colors.comments})
call s:h("markdownCodeBlock", { "fg": s:colors.comments})
call s:h("markdownBlockQuote", { "fg": s:colors.keywordColor})
call s:h("markdownUrlTitleDelimiter", { "fg": s:colors.comments})

" Javascript
call s:h("jsFuncCall", { "fg": s:colors.editorAccentColor})
call s:h("jsDecoratorFunction", { "fg": s:colors.editorAccentColor})
call s:h("jsDecorator", { "fg": s:colors.editorAccentColor})
call s:h("jsRegexpString", { "fg": s:colors.editorAccentColor})
call s:h("jsStorageClass", { "fg": s:colors.keywordColor})
call s:h("jsThis", { "fg": s:colors.keywordColor})
call s:h("jsOperatorKeyword", { "fg": s:colors.keywordColor})
call s:h("jsVariableDef", { "fg": s:colors.foregroundColorEditor})
call s:h("jsFuncBlock", { "fg": s:colors.foregroundColorEditor})
call s:h("jsParens", { "fg": s:colors.foregroundColorEditor})
call s:h("jsBrackets", { "fg": s:colors.foregroundColorEditor})
call s:h("jsGlobalObjects", { "fg": s:colors.constantColor})
call s:h("jsArrowFunction", { "fg": s:colors.htmlTagColor})
call s:h("jsFunctionArgs", { "fg": s:colors.stringColor})
call s:h("jsFuncArgs", { "fg": s:colors.stringColor})
call s:h("jsObjectProp", { "fg": s:colors.foregroundColorEditor, "gui": "bold", "cterm": "bold"})
call s:h("jsObjectKey", { "fg": s:colors.foregroundColorEditor, "gui": "bold", "cterm": "bold"})

" JSON
call s:h("jsObjectKey", { "fg": s:colors.foregroundColorEditor, "gui": "bold", "cterm": "bold"})
call s:h("jsonKeyword", { "fg": s:colors.foregroundColorEditor})
call s:h("jsonQuote", { "fg": s:colors.foregroundColorEditor})
call s:h("jsonBraces", { "fg": s:colors.foregroundColorEditor})
call s:h("jsonNull", { "fg": s:colors.keywordColor})
call s:h("jsonBoolean", { "fg": s:colors.keywordColor})
call s:h("jsonStringMatch", { "fg": s:colors.stringColor})

" Typescript
call s:h("typescriptBraces", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptEndColons", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptParens", { "fg": s:colors.foregroundColorEditor})
call s:h("typescriptDecorators", { "fg": s:colors.editorAccentColor})
call s:h("typescriptGlobalObjects", { "fg": s:colors.classNameColor})
call s:h("typescriptDocTags", { "fg": s:colors.keyColor})
call s:h("typescriptDocParam", { "fg": s:colors.stringColor})
call s:h("typescriptIdentifier", { "fg": s:colors.keywordColor})

" Java
call s:h("javaExternal", { "fg": s:colors.keywordColor})
call s:h("javaAnnotation", { "fg": s:colors.editorAccentColor})
call s:h("javaParen", { "fg": s:colors.foregroundColorEditor})
call s:h("javaDocTags", { "fg": s:colors.keyColor})
call s:h("javaDocParam", { "fg": s:colors.stringColor})

" Kotlin
call s:h("ktInclude", { "fg": s:colors.keywordColor})
call s:h("ktDocTagParam", { "fg": s:colors.stringColor})
call s:h("ktAnnotation", { "fg": s:colors.editorAccentColor})
call s:h("ktExclExcl", { "fg": s:colors.htmlTagColor})
call s:h("ktArrow", { "fg": s:colors.foregroundColorEditor})

" CSS
call s:h("cssBraces", { "fg": s:colors.foregroundColorEditor})
call s:h("cssTagName", { "fg": s:colors.editorAccentColor})
call s:h("cssFunctionName", { "fg": s:colors.classNameColor})
call s:h("cssFunction", { "fg": s:colors.editorAccentColor})
call s:h("cssClassName", { "fg": s:colors.classNameColor})
call s:h("cssAttributeSelector", { "fg": s:colors.classNameColor})
call s:h("cssAtKeyword", { "fg": s:colors.keywordColor})
call s:h("cssProp", { "fg": s:colors.keyColor})
call s:h("cssPseudoClassId", { "fg": s:colors.stringColor})

" Neovim-Specific Highlighting 

if has("nvim")
  " Neovim terminal colors 
  "let g:terminal_color_0 =  s:black.gui
  let g:terminal_color_1 =  s:colors.terminalAnsiMagenta.gui
  let g:terminal_color_2 =  s:colors.terminalAnsiGreen.gui
  let g:terminal_color_3 =  s:colors.terminalAnsiYellow.gui
  let g:terminal_color_4 =  s:colors.terminalAnsiGreen.gui
  let g:terminal_color_5 =  s:colors.terminalAnsiBlue.gui
  let g:terminal_color_6 =  s:colors.terminalAnsiCyan.gui
  "let g:terminal_color_7 =  s:white.gui
 " let g:terminal_color_8 =  s:visual_grey.gui
 " let g:terminal_color_9 =  s:dark_red.gui
  let g:terminal_color_10 = s:colors.terminalAnsiGreen.gui " No dark version
  let g:terminal_color_11 = s:colors.terminalAnsiYellow.gui
  let g:terminal_color_12 = s:colors.terminalAnsiBlue.gui " No dark version
  let g:terminal_color_13 = s:colors.terminalAnsiBlue.gui " No dark version
  let g:terminal_color_14 = s:colors.terminalAnsiCyan.gui " No dark version
  let g:terminal_color_15 = s:colors.comments.gui
  let g:terminal_color_background = s:colors.textEditorBackground.gui
  let g:terminal_color_foreground = s:colors.foregroundColorEditor.gui
  " }}}

  " Neovim Diagnostics 
  call s:h("DiagnosticError", { "fg": s:colors.errorColor })
  call s:h("DiagnosticWarn", { "fg": s:colors.terminalAnsiYellow })
  call s:h("DiagnosticInfo", { "fg": s:colors.infoForeground })
  call s:h("DiagnosticHint", { "fg": s:colors.terminalAnsiCyan })
  call s:h("DiagnosticUnderlineError", { "fg": s:colors.errorColor, "gui": "underline", "cterm": "underline" })
  call s:h("DiagnosticUnderlineWarn", { "fg": s:colors.terminalAnsiYellow, "gui": "underline", "cterm": "underline" })
  call s:h("DiagnosticUnderlineInfo", { "fg": s:colors.terminalAnsiBlue, "gui": "underline", "cterm": "underline" })
  call s:h("DiagnosticUnderlineHint", { "fg": s:colors.terminalAnsiCyan, "gui": "underline", "cterm": "underline" })
  " }}}

  " Neovim LSP (for versions < 0.5.1) 
  hi link LspDiagnosticsDefaultError DiagnosticError
  hi link LspDiagnosticsDefaultWarning DiagnosticWarn
  hi link LspDiagnosticsDefaultInformation DiagnosticInfo
  hi link LspDiagnosticsDefaultHint DiagnosticHint
  hi link LspDiagnosticsUnderlineError DiagnosticUnderlineError
  hi link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
  hi link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
  hi link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
  " }}}
endif
