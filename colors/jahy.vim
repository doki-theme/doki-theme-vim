" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'jahy'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:jahy#palette.fg

let s:bglighter = g:jahy#palette.bglighter
let s:bglight   = g:jahy#palette.bglight
let s:bg        = g:jahy#palette.bg
let s:bgdark    = g:jahy#palette.bgdark
let s:bgdarker  = g:jahy#palette.bgdarker

let s:comment   = g:jahy#palette.comment
let s:selection = g:jahy#palette.selection
let s:subtle    = g:jahy#palette.subtle

let s:key_color      = g:jahy#palette.key_color
let s:class_name     = g:jahy#palette.class_name
let s:parameter_color    = g:jahy#palette.parameter_color
let s:keyword_color      = g:jahy#palette.keyword_color
let s:constants_color    = g:jahy#palette.constants_color
let s:red       = g:jahy#palette.red
let s:string_color    = g:jahy#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:jahy#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:jahy#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:jahy_bold')
  let g:jahy_bold = 1
endif

if !exists('g:jahy_italic')
  let g:jahy_italic = 1
endif

if !exists('g:jahy_underline')
  let g:jahy_underline = 1
endif

if !exists('g:jahy_undercurl') && g:jahy_underline != 0
  let g:jahy_undercurl = 1
endif

if !exists('g:jahy_inverse')
  let g:jahy_inverse = 1
endif

if !exists('g:jahy_colorterm')
  let g:jahy_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:jahy_bold == 1 ? 'bold' : 0,
      \ 'italic': g:jahy_italic == 1 ? 'italic' : 0,
      \ 'underline': g:jahy_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:jahy_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:jahy_inverse == 1 ? 'inverse' : 0,
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

call s:h('JahyBgLight', s:none, s:bglight)
call s:h('JahyBgLighter', s:none, s:bglighter)
call s:h('JahyBgDark', s:none, s:bgdark)
call s:h('JahyBgDarker', s:none, s:bgdarker)

call s:h('JahyFg', s:fg)
call s:h('JahyFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('JahyFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('JahyComment', s:comment)
call s:h('JahyCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('JahySelection', s:none, s:selection)

call s:h('JahySubtle', s:subtle)

call s:h('JahyKeyColor', s:key_color)
call s:h('JahyKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('JahyClassName', s:class_name)
call s:h('JahyClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('JahyClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('JahyClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('JahyParameter', s:parameter_color)
call s:h('JahyParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('JahyParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('JahyParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('JahyParameterInverse', s:bg, s:parameter_color)

call s:h('JahyKeyword', s:keyword_color)
call s:h('JahyKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('JahyConstants', s:constants_color)
call s:h('JahyConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('JahyConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('JahyRed', s:red)
call s:h('JahyRedInverse', s:fg, s:red)

call s:h('JahyStringColor', s:string_color)
call s:h('JahyStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('JahyError', s:red, s:none, [], s:red)

call s:h('JahyErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('JahyWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('JahyInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('JahyTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('JahySearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('JahyBoundary', s:comment, s:bgdark)
call s:h('JahyLink', s:key_color, s:none, [s:attrs.underline])

call s:h('JahyDiffChange', s:parameter_color, s:none)
call s:h('JahyDiffText', s:bg, s:parameter_color)
call s:h('JahyDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:jahy_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  JahyBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr JahyStringColor
hi! link DiffAdd      JahyClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   JahyDiffChange
hi! link DiffDelete   JahyDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     JahyDiffText
hi! link Directory    JahyConstantsBold
hi! link ErrorMsg     JahyRedInverse
hi! link FoldColumn   JahySubtle
hi! link Folded       JahyBoundary
hi! link IncSearch    JahyParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      JahyFgBold
hi! link NonText      JahySubtle
" hi! link Pmenu        JahyBgDark
" hi! link PmenuSbar    JahyBgDark
hi! link PmenuSel     JahySelection
hi! link PmenuThumb   JahySelection
hi! link Question     JahyFgBold
hi! link Search       JahySearch
call s:h('SignColumn', s:comment)
hi! link TabLine      JahyBoundary
" hi! link TabLineFill  JahyBgDarker
hi! link TabLineSel   Normal
hi! link Title        JahyClassNameBold
hi! link VertSplit    JahyBoundary
hi! link Visual       JahySelection
hi! link VisualNOS    Visual
hi! link WarningMsg   JahyParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey JahyRed
  hi! link LspDiagnosticsUnderline JahyFgUnderline
  hi! link LspDiagnosticsInformation JahyKeyColor
  hi! link LspDiagnosticsHint JahyKeyColor
  hi! link LspDiagnosticsError JahyError
  hi! link LspDiagnosticsWarning JahyParameter
  hi! link LspDiagnosticsUnderlineError JahyErrorLine
  hi! link LspDiagnosticsUnderlineHint JahyInfoLine
  hi! link LspDiagnosticsUnderlineInformation JahyInfoLine
  hi! link LspDiagnosticsUnderlineWarning JahyWarnLine
else
  hi! link SpecialKey JahySubtle
endif

hi! link Comment JahyComment
hi! link Underlined JahyFgUnderline
hi! link Todo JahyTodo

hi! link Error JahyError
hi! link SpellBad JahyErrorLine
hi! link SpellLocal JahyWarnLine
hi! link SpellCap JahyInfoLine
hi! link SpellRare JahyInfoLine

hi! link Constant JahyConstants
hi! link String JahyStringColor
hi! link Character JahyKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier JahyFg
hi! link Function JahyClassName

hi! link Statement JahyKeyword
hi! link Conditional JahyKeyword
hi! link Repeat JahyKeyword
hi! link Label JahyKeyword
hi! link Operator JahyKeyword
hi! link Keyword JahyKeyword
hi! link Exception JahyKeyword

hi! link PreProc JahyKeyword
hi! link Include JahyKeyword
hi! link Define JahyKeyword
hi! link Macro JahyKeyword
hi! link PreCondit JahyKeyword
hi! link StorageClass JahyKeyword
hi! link Structure JahyKeyword
hi! link Typedef JahyKeyword

hi! link Type JahyKeyColorItalic

hi! link Delimiter JahyFg

hi! link Special JahyKeyword
hi! link SpecialComment JahyKeyColorItalic
hi! link Tag JahyKeyColor
hi! link helpHyperTextJump JahyLink
hi! link helpCommand JahyConstants
hi! link helpExample JahyClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
