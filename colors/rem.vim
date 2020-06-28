" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rem'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rem#palette.fg

let s:bglighter = g:rem#palette.bglighter
let s:bglight   = g:rem#palette.bglight
let s:bg        = g:rem#palette.bg
let s:bgdark    = g:rem#palette.bgdark
let s:bgdarker  = g:rem#palette.bgdarker

let s:comment   = g:rem#palette.comment
let s:selection = g:rem#palette.selection
let s:subtle    = g:rem#palette.subtle

let s:key_color      = g:rem#palette.key_color
let s:class_name     = g:rem#palette.class_name
let s:parameter_color    = g:rem#palette.parameter_color
let s:keyword_color      = g:rem#palette.keyword_color
let s:constants_color    = g:rem#palette.constants_color
let s:red       = g:rem#palette.red
let s:string_color    = g:rem#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rem#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rem#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rem_bold')
  let g:rem_bold = 1
endif

if !exists('g:rem_italic')
  let g:rem_italic = 1
endif

if !exists('g:rem_underline')
  let g:rem_underline = 1
endif

if !exists('g:rem_undercurl') && g:rem_underline != 0
  let g:rem_undercurl = 1
endif

if !exists('g:rem_inverse')
  let g:rem_inverse = 1
endif

if !exists('g:rem_colorterm')
  let g:rem_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:rem_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rem_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rem_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rem_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rem_inverse == 1 ? 'inverse' : 0,
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

call s:h('RemBgLight', s:none, s:bglight)
call s:h('RemBgLighter', s:none, s:bglighter)
call s:h('RemBgDark', s:none, s:bgdark)
call s:h('RemBgDarker', s:none, s:bgdarker)

call s:h('RemFg', s:fg)
call s:h('RemFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RemFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RemComment', s:comment)
call s:h('RemCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RemSelection', s:none, s:selection)

call s:h('RemSubtle', s:subtle)

call s:h('RemKeyColor', s:key_color)
call s:h('RemKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RemClassName', s:class_name)
call s:h('RemClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RemClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RemClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RemParameter', s:parameter_color)
call s:h('RemParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RemParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RemParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RemParameterInverse', s:bg, s:parameter_color)

call s:h('RemKeyword', s:keyword_color)
call s:h('RemKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RemConstants', s:constants_color)
call s:h('RemConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RemConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RemRed', s:red)
call s:h('RemRedInverse', s:fg, s:red)

call s:h('RemStringColor', s:string_color)
call s:h('RemStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RemError', s:red, s:none, [], s:red)

call s:h('RemErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RemWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RemInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RemTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RemSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RemBoundary', s:comment, s:bgdark)
call s:h('RemLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RemDiffChange', s:parameter_color, s:none)
call s:h('RemDiffText', s:bg, s:parameter_color)
call s:h('RemDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rem_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RemBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RemStringColor
hi! link DiffAdd      RemClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RemDiffChange
hi! link DiffDelete   RemDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RemDiffText
hi! link Directory    RemConstantsBold
hi! link ErrorMsg     RemRedInverse
hi! link FoldColumn   RemSubtle
hi! link Folded       RemBoundary
hi! link IncSearch    RemParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RemFgBold
hi! link NonText      RemSubtle
" hi! link Pmenu        RemBgDark
" hi! link PmenuSbar    RemBgDark
hi! link PmenuSel     RemSelection
hi! link PmenuThumb   RemSelection
hi! link Question     RemFgBold
hi! link Search       RemSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RemBoundary
" hi! link TabLineFill  RemBgDarker
hi! link TabLineSel   Normal
hi! link Title        RemClassNameBold
hi! link VertSplit    RemBoundary
hi! link Visual       RemSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RemParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RemRed
  hi! link LspDiagnosticsUnderline RemFgUnderline
  hi! link LspDiagnosticsInformation RemKeyColor
  hi! link LspDiagnosticsHint RemKeyColor
  hi! link LspDiagnosticsError RemError
  hi! link LspDiagnosticsWarning RemParameter
  hi! link LspDiagnosticsUnderlineError RemErrorLine
  hi! link LspDiagnosticsUnderlineHint RemInfoLine
  hi! link LspDiagnosticsUnderlineInformation RemInfoLine
  hi! link LspDiagnosticsUnderlineWarning RemWarnLine
else
  hi! link SpecialKey RemSubtle
endif

hi! link Comment RemComment
hi! link Underlined RemFgUnderline
hi! link Todo RemTodo

hi! link Error RemError
hi! link SpellBad RemErrorLine
hi! link SpellLocal RemWarnLine
hi! link SpellCap RemInfoLine
hi! link SpellRare RemInfoLine

hi! link Constant RemConstants
hi! link String RemStringColor
hi! link Character RemKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RemFg
hi! link Function RemClassName

hi! link Statement RemKeyword
hi! link Conditional RemKeyword
hi! link Repeat RemKeyword
hi! link Label RemKeyword
hi! link Operator RemKeyword
hi! link Keyword RemKeyword
hi! link Exception RemKeyword

hi! link PreProc RemKeyword
hi! link Include RemKeyword
hi! link Define RemKeyword
hi! link Macro RemKeyword
hi! link PreCondit RemKeyword
hi! link StorageClass RemKeyword
hi! link Structure RemKeyword
hi! link Typedef RemKeyword

hi! link Type RemKeyColorItalic

hi! link Delimiter RemFg

hi! link Special RemKeyword
hi! link SpecialComment RemKeyColorItalic
hi! link Tag RemKeyColor
hi! link helpHyperTextJump RemLink
hi! link helpCommand RemConstants
hi! link helpExample RemClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
