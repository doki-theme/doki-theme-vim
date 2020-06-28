" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'asuna'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:asuna#palette.fg

let s:bglighter = g:asuna#palette.bglighter
let s:bglight   = g:asuna#palette.bglight
let s:bg        = g:asuna#palette.bg
let s:bgdark    = g:asuna#palette.bgdark
let s:bgdarker  = g:asuna#palette.bgdarker

let s:comment   = g:asuna#palette.comment
let s:selection = g:asuna#palette.selection
let s:subtle    = g:asuna#palette.subtle

let s:key_color      = g:asuna#palette.key_color
let s:class_name     = g:asuna#palette.class_name
let s:parameter_color    = g:asuna#palette.parameter_color
let s:keyword_color      = g:asuna#palette.keyword_color
let s:constants_color    = g:asuna#palette.constants_color
let s:red       = g:asuna#palette.red
let s:string_color    = g:asuna#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:asuna#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:asuna#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:asuna_bold')
  let g:asuna_bold = 1
endif

if !exists('g:asuna_italic')
  let g:asuna_italic = 1
endif

if !exists('g:asuna_underline')
  let g:asuna_underline = 1
endif

if !exists('g:asuna_undercurl') && g:asuna_underline != 0
  let g:asuna_undercurl = 1
endif

if !exists('g:asuna_inverse')
  let g:asuna_inverse = 1
endif

if !exists('g:asuna_colorterm')
  let g:asuna_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:asuna_bold == 1 ? 'bold' : 0,
      \ 'italic': g:asuna_italic == 1 ? 'italic' : 0,
      \ 'underline': g:asuna_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:asuna_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:asuna_inverse == 1 ? 'inverse' : 0,
      \}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
        \ 'highlight', a:scope,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
"Highlight Groups: 

call s:h('AsunaBgLight', s:none, s:bglight)
call s:h('AsunaBgLighter', s:none, s:bglighter)
call s:h('AsunaBgDark', s:none, s:bgdark)
call s:h('AsunaBgDarker', s:none, s:bgdarker)

call s:h('AsunaFg', s:fg)
call s:h('AsunaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AsunaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AsunaComment', s:comment)
call s:h('AsunaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AsunaSelection', s:none, s:selection)

call s:h('AsunaSubtle', s:subtle)

call s:h('AsunaKeyColor', s:key_color)
call s:h('AsunaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AsunaClassName', s:class_name)
call s:h('AsunaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AsunaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AsunaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AsunaParameter', s:parameter_color)
call s:h('AsunaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AsunaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AsunaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AsunaParameterInverse', s:bg, s:parameter_color)

call s:h('AsunaKeyword', s:keyword_color)
call s:h('AsunaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AsunaConstants', s:constants_color)
call s:h('AsunaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AsunaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AsunaRed', s:red)
call s:h('AsunaRedInverse', s:fg, s:red)

call s:h('AsunaStringColor', s:string_color)
call s:h('AsunaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AsunaError', s:red, s:none, [], s:red)

call s:h('AsunaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AsunaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AsunaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AsunaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AsunaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AsunaBoundary', s:comment, s:bgdark)
call s:h('AsunaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AsunaDiffChange', s:parameter_color, s:none)
call s:h('AsunaDiffText', s:bg, s:parameter_color)
call s:h('AsunaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:asuna_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AsunaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AsunaStringColor
hi! link DiffAdd      AsunaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AsunaDiffChange
hi! link DiffDelete   AsunaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AsunaDiffText
hi! link Directory    AsunaConstantsBold
hi! link ErrorMsg     AsunaRedInverse
hi! link FoldColumn   AsunaSubtle
hi! link Folded       AsunaBoundary
hi! link IncSearch    AsunaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AsunaFgBold
hi! link NonText      AsunaSubtle
" hi! link Pmenu        AsunaBgDark
" hi! link PmenuSbar    AsunaBgDark
hi! link PmenuSel     AsunaSelection
hi! link PmenuThumb   AsunaSelection
hi! link Question     AsunaFgBold
hi! link Search       AsunaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AsunaBoundary
" hi! link TabLineFill  AsunaBgDarker
hi! link TabLineSel   Normal
hi! link Title        AsunaClassNameBold
hi! link VertSplit    AsunaBoundary
hi! link Visual       AsunaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AsunaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AsunaRed
  hi! link LspDiagnosticsUnderline AsunaFgUnderline
  hi! link LspDiagnosticsInformation AsunaKeyColor
  hi! link LspDiagnosticsHint AsunaKeyColor
  hi! link LspDiagnosticsError AsunaError
  hi! link LspDiagnosticsWarning AsunaParameter
  hi! link LspDiagnosticsUnderlineError AsunaErrorLine
  hi! link LspDiagnosticsUnderlineHint AsunaInfoLine
  hi! link LspDiagnosticsUnderlineInformation AsunaInfoLine
  hi! link LspDiagnosticsUnderlineWarning AsunaWarnLine
else
  hi! link SpecialKey AsunaSubtle
endif

hi! link Comment AsunaComment
hi! link Underlined AsunaFgUnderline
hi! link Todo AsunaTodo

hi! link Error AsunaError
hi! link SpellBad AsunaErrorLine
hi! link SpellLocal AsunaWarnLine
hi! link SpellCap AsunaInfoLine
hi! link SpellRare AsunaInfoLine

hi! link Constant AsunaConstants
hi! link String AsunaStringColor
hi! link Character AsunaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AsunaFg
hi! link Function AsunaClassName

hi! link Statement AsunaKeyword
hi! link Conditional AsunaKeyword
hi! link Repeat AsunaKeyword
hi! link Label AsunaKeyword
hi! link Operator AsunaKeyword
hi! link Keyword AsunaKeyword
hi! link Exception AsunaKeyword

hi! link PreProc AsunaKeyword
hi! link Include AsunaKeyword
hi! link Define AsunaKeyword
hi! link Macro AsunaKeyword
hi! link PreCondit AsunaKeyword
hi! link StorageClass AsunaKeyword
hi! link Structure AsunaKeyword
hi! link Typedef AsunaKeyword

hi! link Type AsunaKeyColorItalic

hi! link Delimiter AsunaFg

hi! link Special AsunaKeyword
hi! link SpecialComment AsunaKeyColorItalic
hi! link Tag AsunaKeyColor
hi! link helpHyperTextJump AsunaLink
hi! link helpCommand AsunaConstants
hi! link helpExample AsunaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
