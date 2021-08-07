" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'azuki'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:azuki#palette.fg

let s:bglighter = g:azuki#palette.bglighter
let s:bglight   = g:azuki#palette.bglight
let s:bg        = g:azuki#palette.bg
let s:bgdark    = g:azuki#palette.bgdark
let s:bgdarker  = g:azuki#palette.bgdarker

let s:comment   = g:azuki#palette.comment
let s:selection = g:azuki#palette.selection
let s:subtle    = g:azuki#palette.subtle

let s:key_color      = g:azuki#palette.key_color
let s:class_name     = g:azuki#palette.class_name
let s:parameter_color    = g:azuki#palette.parameter_color
let s:keyword_color      = g:azuki#palette.keyword_color
let s:constants_color    = g:azuki#palette.constants_color
let s:red       = g:azuki#palette.red
let s:string_color    = g:azuki#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:azuki#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:azuki#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:azuki_bold')
  let g:azuki_bold = 1
endif

if !exists('g:azuki_italic')
  let g:azuki_italic = 1
endif

if !exists('g:azuki_underline')
  let g:azuki_underline = 1
endif

if !exists('g:azuki_undercurl') && g:azuki_underline != 0
  let g:azuki_undercurl = 1
endif

if !exists('g:azuki_inverse')
  let g:azuki_inverse = 1
endif

if !exists('g:azuki_colorterm')
  let g:azuki_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:azuki_bold == 1 ? 'bold' : 0,
      \ 'italic': g:azuki_italic == 1 ? 'italic' : 0,
      \ 'underline': g:azuki_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:azuki_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:azuki_inverse == 1 ? 'inverse' : 0,
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

call s:h('AzukiBgLight', s:none, s:bglight)
call s:h('AzukiBgLighter', s:none, s:bglighter)
call s:h('AzukiBgDark', s:none, s:bgdark)
call s:h('AzukiBgDarker', s:none, s:bgdarker)

call s:h('AzukiFg', s:fg)
call s:h('AzukiFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AzukiFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AzukiComment', s:comment)
call s:h('AzukiCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AzukiSelection', s:none, s:selection)

call s:h('AzukiSubtle', s:subtle)

call s:h('AzukiKeyColor', s:key_color)
call s:h('AzukiKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AzukiClassName', s:class_name)
call s:h('AzukiClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AzukiClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AzukiClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AzukiParameter', s:parameter_color)
call s:h('AzukiParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AzukiParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AzukiParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AzukiParameterInverse', s:bg, s:parameter_color)

call s:h('AzukiKeyword', s:keyword_color)
call s:h('AzukiKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AzukiConstants', s:constants_color)
call s:h('AzukiConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AzukiConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AzukiRed', s:red)
call s:h('AzukiRedInverse', s:fg, s:red)

call s:h('AzukiStringColor', s:string_color)
call s:h('AzukiStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AzukiError', s:red, s:none, [], s:red)

call s:h('AzukiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AzukiWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AzukiInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AzukiTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AzukiSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AzukiBoundary', s:comment, s:bgdark)
call s:h('AzukiLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AzukiDiffChange', s:parameter_color, s:none)
call s:h('AzukiDiffText', s:bg, s:parameter_color)
call s:h('AzukiDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:azuki_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AzukiBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AzukiStringColor
hi! link DiffAdd      AzukiClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AzukiDiffChange
hi! link DiffDelete   AzukiDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AzukiDiffText
hi! link Directory    AzukiConstantsBold
hi! link ErrorMsg     AzukiRedInverse
hi! link FoldColumn   AzukiSubtle
hi! link Folded       AzukiBoundary
hi! link IncSearch    AzukiParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AzukiFgBold
hi! link NonText      AzukiSubtle
" hi! link Pmenu        AzukiBgDark
" hi! link PmenuSbar    AzukiBgDark
hi! link PmenuSel     AzukiSelection
hi! link PmenuThumb   AzukiSelection
hi! link Question     AzukiFgBold
hi! link Search       AzukiSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AzukiBoundary
" hi! link TabLineFill  AzukiBgDarker
hi! link TabLineSel   Normal
hi! link Title        AzukiClassNameBold
hi! link VertSplit    AzukiBoundary
hi! link Visual       AzukiSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AzukiParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AzukiRed
  hi! link LspDiagnosticsUnderline AzukiFgUnderline
  hi! link LspDiagnosticsInformation AzukiKeyColor
  hi! link LspDiagnosticsHint AzukiKeyColor
  hi! link LspDiagnosticsError AzukiError
  hi! link LspDiagnosticsWarning AzukiParameter
  hi! link LspDiagnosticsUnderlineError AzukiErrorLine
  hi! link LspDiagnosticsUnderlineHint AzukiInfoLine
  hi! link LspDiagnosticsUnderlineInformation AzukiInfoLine
  hi! link LspDiagnosticsUnderlineWarning AzukiWarnLine
else
  hi! link SpecialKey AzukiSubtle
endif

hi! link Comment AzukiComment
hi! link Underlined AzukiFgUnderline
hi! link Todo AzukiTodo

hi! link Error AzukiError
hi! link SpellBad AzukiErrorLine
hi! link SpellLocal AzukiWarnLine
hi! link SpellCap AzukiInfoLine
hi! link SpellRare AzukiInfoLine

hi! link Constant AzukiConstants
hi! link String AzukiStringColor
hi! link Character AzukiKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AzukiFg
hi! link Function AzukiClassName

hi! link Statement AzukiKeyword
hi! link Conditional AzukiKeyword
hi! link Repeat AzukiKeyword
hi! link Label AzukiKeyword
hi! link Operator AzukiKeyword
hi! link Keyword AzukiKeyword
hi! link Exception AzukiKeyword

hi! link PreProc AzukiKeyword
hi! link Include AzukiKeyword
hi! link Define AzukiKeyword
hi! link Macro AzukiKeyword
hi! link PreCondit AzukiKeyword
hi! link StorageClass AzukiKeyword
hi! link Structure AzukiKeyword
hi! link Typedef AzukiKeyword

hi! link Type AzukiKeyColorItalic

hi! link Delimiter AzukiFg

hi! link Special AzukiKeyword
hi! link SpecialComment AzukiKeyColorItalic
hi! link Tag AzukiKeyColor
hi! link helpHyperTextJump AzukiLink
hi! link helpCommand AzukiConstants
hi! link helpExample AzukiClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
