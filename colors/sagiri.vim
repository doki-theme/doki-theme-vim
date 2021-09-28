" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sagiri'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:sagiri#palette.fg

let s:bglighter = g:sagiri#palette.bglighter
let s:bglight   = g:sagiri#palette.bglight
let s:bg        = g:sagiri#palette.bg
let s:bgdark    = g:sagiri#palette.bgdark
let s:bgdarker  = g:sagiri#palette.bgdarker

let s:comment   = g:sagiri#palette.comment
let s:selection = g:sagiri#palette.selection
let s:subtle    = g:sagiri#palette.subtle

let s:key_color      = g:sagiri#palette.key_color
let s:class_name     = g:sagiri#palette.class_name
let s:parameter_color    = g:sagiri#palette.parameter_color
let s:keyword_color      = g:sagiri#palette.keyword_color
let s:constants_color    = g:sagiri#palette.constants_color
let s:red       = g:sagiri#palette.red
let s:string_color    = g:sagiri#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:sagiri#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:sagiri#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:sagiri_bold')
  let g:sagiri_bold = 1
endif

if !exists('g:sagiri_italic')
  let g:sagiri_italic = 1
endif

if !exists('g:sagiri_underline')
  let g:sagiri_underline = 1
endif

if !exists('g:sagiri_undercurl') && g:sagiri_underline != 0
  let g:sagiri_undercurl = 1
endif

if !exists('g:sagiri_inverse')
  let g:sagiri_inverse = 1
endif

if !exists('g:sagiri_colorterm')
  let g:sagiri_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:sagiri_bold == 1 ? 'bold' : 0,
      \ 'italic': g:sagiri_italic == 1 ? 'italic' : 0,
      \ 'underline': g:sagiri_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:sagiri_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:sagiri_inverse == 1 ? 'inverse' : 0,
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

call s:h('SagiriBgLight', s:none, s:bglight)
call s:h('SagiriBgLighter', s:none, s:bglighter)
call s:h('SagiriBgDark', s:none, s:bgdark)
call s:h('SagiriBgDarker', s:none, s:bgdarker)

call s:h('SagiriFg', s:fg)
call s:h('SagiriFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SagiriFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SagiriComment', s:comment)
call s:h('SagiriCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SagiriSelection', s:none, s:selection)

call s:h('SagiriSubtle', s:subtle)

call s:h('SagiriKeyColor', s:key_color)
call s:h('SagiriKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SagiriClassName', s:class_name)
call s:h('SagiriClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SagiriClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SagiriClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SagiriParameter', s:parameter_color)
call s:h('SagiriParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SagiriParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SagiriParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SagiriParameterInverse', s:bg, s:parameter_color)

call s:h('SagiriKeyword', s:keyword_color)
call s:h('SagiriKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SagiriConstants', s:constants_color)
call s:h('SagiriConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SagiriConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SagiriRed', s:red)
call s:h('SagiriRedInverse', s:fg, s:red)

call s:h('SagiriStringColor', s:string_color)
call s:h('SagiriStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SagiriError', s:red, s:none, [], s:red)

call s:h('SagiriErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SagiriWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SagiriInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SagiriTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SagiriSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SagiriBoundary', s:comment, s:bgdark)
call s:h('SagiriLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SagiriDiffChange', s:parameter_color, s:none)
call s:h('SagiriDiffText', s:bg, s:parameter_color)
call s:h('SagiriDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:sagiri_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SagiriBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SagiriStringColor
hi! link DiffAdd      SagiriClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SagiriDiffChange
hi! link DiffDelete   SagiriDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SagiriDiffText
hi! link Directory    SagiriConstantsBold
hi! link ErrorMsg     SagiriRedInverse
hi! link FoldColumn   SagiriSubtle
hi! link Folded       SagiriBoundary
hi! link IncSearch    SagiriParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SagiriFgBold
hi! link NonText      SagiriSubtle
" hi! link Pmenu        SagiriBgDark
" hi! link PmenuSbar    SagiriBgDark
hi! link PmenuSel     SagiriSelection
hi! link PmenuThumb   SagiriSelection
hi! link Question     SagiriFgBold
hi! link Search       SagiriSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SagiriBoundary
" hi! link TabLineFill  SagiriBgDarker
hi! link TabLineSel   Normal
hi! link Title        SagiriClassNameBold
hi! link VertSplit    SagiriBoundary
hi! link Visual       SagiriSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SagiriParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SagiriRed
  hi! link LspDiagnosticsUnderline SagiriFgUnderline
  hi! link LspDiagnosticsInformation SagiriKeyColor
  hi! link LspDiagnosticsHint SagiriKeyColor
  hi! link LspDiagnosticsError SagiriError
  hi! link LspDiagnosticsWarning SagiriParameter
  hi! link LspDiagnosticsUnderlineError SagiriErrorLine
  hi! link LspDiagnosticsUnderlineHint SagiriInfoLine
  hi! link LspDiagnosticsUnderlineInformation SagiriInfoLine
  hi! link LspDiagnosticsUnderlineWarning SagiriWarnLine
else
  hi! link SpecialKey SagiriSubtle
endif

hi! link Comment SagiriComment
hi! link Underlined SagiriFgUnderline
hi! link Todo SagiriTodo

hi! link Error SagiriError
hi! link SpellBad SagiriErrorLine
hi! link SpellLocal SagiriWarnLine
hi! link SpellCap SagiriInfoLine
hi! link SpellRare SagiriInfoLine

hi! link Constant SagiriConstants
hi! link String SagiriStringColor
hi! link Character SagiriKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SagiriFg
hi! link Function SagiriClassName

hi! link Statement SagiriKeyword
hi! link Conditional SagiriKeyword
hi! link Repeat SagiriKeyword
hi! link Label SagiriKeyword
hi! link Operator SagiriKeyword
hi! link Keyword SagiriKeyword
hi! link Exception SagiriKeyword

hi! link PreProc SagiriKeyword
hi! link Include SagiriKeyword
hi! link Define SagiriKeyword
hi! link Macro SagiriKeyword
hi! link PreCondit SagiriKeyword
hi! link StorageClass SagiriKeyword
hi! link Structure SagiriKeyword
hi! link Typedef SagiriKeyword

hi! link Type SagiriKeyColorItalic

hi! link Delimiter SagiriFg

hi! link Special SagiriKeyword
hi! link SpecialComment SagiriKeyColorItalic
hi! link Tag SagiriKeyColor
hi! link helpHyperTextJump SagiriLink
hi! link helpCommand SagiriConstants
hi! link helpExample SagiriClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
