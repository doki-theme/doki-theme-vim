" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'satsuki'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:satsuki#palette.fg

let s:bglighter = g:satsuki#palette.bglighter
let s:bglight   = g:satsuki#palette.bglight
let s:bg        = g:satsuki#palette.bg
let s:bgdark    = g:satsuki#palette.bgdark
let s:bgdarker  = g:satsuki#palette.bgdarker

let s:comment   = g:satsuki#palette.comment
let s:selection = g:satsuki#palette.selection
let s:subtle    = g:satsuki#palette.subtle

let s:key_color      = g:satsuki#palette.key_color
let s:class_name     = g:satsuki#palette.class_name
let s:parameter_color    = g:satsuki#palette.parameter_color
let s:keyword_color      = g:satsuki#palette.keyword_color
let s:constants_color    = g:satsuki#palette.constants_color
let s:red       = g:satsuki#palette.red
let s:string_color    = g:satsuki#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:satsuki#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:satsuki#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:satsuki_bold')
  let g:satsuki_bold = 1
endif

if !exists('g:satsuki_italic')
  let g:satsuki_italic = 1
endif

if !exists('g:satsuki_underline')
  let g:satsuki_underline = 1
endif

if !exists('g:satsuki_undercurl') && g:satsuki_underline != 0
  let g:satsuki_undercurl = 1
endif

if !exists('g:satsuki_inverse')
  let g:satsuki_inverse = 1
endif

if !exists('g:satsuki_colorterm')
  let g:satsuki_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:satsuki_bold == 1 ? 'bold' : 0,
      \ 'italic': g:satsuki_italic == 1 ? 'italic' : 0,
      \ 'underline': g:satsuki_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:satsuki_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:satsuki_inverse == 1 ? 'inverse' : 0,
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

call s:h('SatsukiBgLight', s:none, s:bglight)
call s:h('SatsukiBgLighter', s:none, s:bglighter)
call s:h('SatsukiBgDark', s:none, s:bgdark)
call s:h('SatsukiBgDarker', s:none, s:bgdarker)

call s:h('SatsukiFg', s:fg)
call s:h('SatsukiFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SatsukiFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SatsukiComment', s:comment)
call s:h('SatsukiCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SatsukiSelection', s:none, s:selection)

call s:h('SatsukiSubtle', s:subtle)

call s:h('SatsukiKeyColor', s:key_color)
call s:h('SatsukiKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SatsukiClassName', s:class_name)
call s:h('SatsukiClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SatsukiClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SatsukiClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SatsukiParameter', s:parameter_color)
call s:h('SatsukiParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SatsukiParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SatsukiParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SatsukiParameterInverse', s:bg, s:parameter_color)

call s:h('SatsukiKeyword', s:keyword_color)
call s:h('SatsukiKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SatsukiConstants', s:constants_color)
call s:h('SatsukiConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SatsukiConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SatsukiRed', s:red)
call s:h('SatsukiRedInverse', s:fg, s:red)

call s:h('SatsukiStringColor', s:string_color)
call s:h('SatsukiStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SatsukiError', s:red, s:none, [], s:red)

call s:h('SatsukiErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SatsukiWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SatsukiInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SatsukiTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SatsukiSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SatsukiBoundary', s:comment, s:bgdark)
call s:h('SatsukiLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SatsukiDiffChange', s:parameter_color, s:none)
call s:h('SatsukiDiffText', s:bg, s:parameter_color)
call s:h('SatsukiDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:satsuki_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SatsukiBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SatsukiStringColor
hi! link DiffAdd      SatsukiClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SatsukiDiffChange
hi! link DiffDelete   SatsukiDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SatsukiDiffText
hi! link Directory    SatsukiConstantsBold
hi! link ErrorMsg     SatsukiRedInverse
hi! link FoldColumn   SatsukiSubtle
hi! link Folded       SatsukiBoundary
hi! link IncSearch    SatsukiParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SatsukiFgBold
hi! link NonText      SatsukiSubtle
" hi! link Pmenu        SatsukiBgDark
" hi! link PmenuSbar    SatsukiBgDark
hi! link PmenuSel     SatsukiSelection
hi! link PmenuThumb   SatsukiSelection
hi! link Question     SatsukiFgBold
hi! link Search       SatsukiSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SatsukiBoundary
" hi! link TabLineFill  SatsukiBgDarker
hi! link TabLineSel   Normal
hi! link Title        SatsukiClassNameBold
hi! link VertSplit    SatsukiBoundary
hi! link Visual       SatsukiSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SatsukiParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SatsukiRed
  hi! link LspDiagnosticsUnderline SatsukiFgUnderline
  hi! link LspDiagnosticsInformation SatsukiKeyColor
  hi! link LspDiagnosticsHint SatsukiKeyColor
  hi! link LspDiagnosticsError SatsukiError
  hi! link LspDiagnosticsWarning SatsukiParameter
  hi! link LspDiagnosticsUnderlineError SatsukiErrorLine
  hi! link LspDiagnosticsUnderlineHint SatsukiInfoLine
  hi! link LspDiagnosticsUnderlineInformation SatsukiInfoLine
  hi! link LspDiagnosticsUnderlineWarning SatsukiWarnLine
else
  hi! link SpecialKey SatsukiSubtle
endif

hi! link Comment SatsukiComment
hi! link Underlined SatsukiFgUnderline
hi! link Todo SatsukiTodo

hi! link Error SatsukiError
hi! link SpellBad SatsukiErrorLine
hi! link SpellLocal SatsukiWarnLine
hi! link SpellCap SatsukiInfoLine
hi! link SpellRare SatsukiInfoLine

hi! link Constant SatsukiConstants
hi! link String SatsukiStringColor
hi! link Character SatsukiKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SatsukiFg
hi! link Function SatsukiClassName

hi! link Statement SatsukiKeyword
hi! link Conditional SatsukiKeyword
hi! link Repeat SatsukiKeyword
hi! link Label SatsukiKeyword
hi! link Operator SatsukiKeyword
hi! link Keyword SatsukiKeyword
hi! link Exception SatsukiKeyword

hi! link PreProc SatsukiKeyword
hi! link Include SatsukiKeyword
hi! link Define SatsukiKeyword
hi! link Macro SatsukiKeyword
hi! link PreCondit SatsukiKeyword
hi! link StorageClass SatsukiKeyword
hi! link Structure SatsukiKeyword
hi! link Typedef SatsukiKeyword

hi! link Type SatsukiKeyColorItalic

hi! link Delimiter SatsukiFg

hi! link Special SatsukiKeyword
hi! link SpecialComment SatsukiKeyColorItalic
hi! link Tag SatsukiKeyColor
hi! link helpHyperTextJump SatsukiLink
hi! link helpCommand SatsukiConstants
hi! link helpExample SatsukiClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
