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

let s:cyan      = g:rem#palette.cyan
let s:green     = g:rem#palette.green
let s:orange    = g:rem#palette.orange
let s:pink      = g:rem#palette.pink
let s:purple    = g:rem#palette.purple
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

call s:h('RemCyan', s:cyan)
call s:h('RemCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('RemGreen', s:green)
call s:h('RemGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('RemGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('RemGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RemOrange', s:orange)
call s:h('RemOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('RemOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('RemOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RemOrangeInverse', s:bg, s:orange)

call s:h('RemPink', s:pink)
call s:h('RemPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('RemPurple', s:purple)
call s:h('RemPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('RemPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('RemRed', s:red)
call s:h('RemRedInverse', s:fg, s:red)

call s:h('RemStringColor', s:string_color)
call s:h('RemStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RemError', s:red, s:none, [], s:red)

call s:h('RemErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RemWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('RemInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('RemTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RemSearch', s:green, s:none, [s:attrs.inverse])
call s:h('RemBoundary', s:comment, s:bgdark)
call s:h('RemLink', s:cyan, s:none, [s:attrs.underline])

call s:h('RemDiffChange', s:orange, s:none)
call s:h('RemDiffText', s:bg, s:orange)
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
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RemBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RemStringColor
hi! link DiffAdd      RemGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RemDiffChange
hi! link DiffDelete   RemDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RemDiffText
hi! link Directory    RemPurpleBold
hi! link ErrorMsg     RemRedInverse
hi! link FoldColumn   RemSubtle
hi! link Folded       RemBoundary
hi! link IncSearch    RemOrangeInverse
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
hi! link Title        RemGreenBold
hi! link VertSplit    RemBoundary
hi! link Visual       RemSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RemOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RemRed
  hi! link LspDiagnosticsUnderline RemFgUnderline
  hi! link LspDiagnosticsInformation RemCyan
  hi! link LspDiagnosticsHint RemCyan
  hi! link LspDiagnosticsError RemError
  hi! link LspDiagnosticsWarning RemOrange
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

hi! link Constant RemPurple
hi! link String RemStringColor
hi! link Character RemPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RemFg
hi! link Function RemGreen

hi! link Statement RemPink
hi! link Conditional RemPink
hi! link Repeat RemPink
hi! link Label RemPink
hi! link Operator RemPink
hi! link Keyword RemPink
hi! link Exception RemPink

hi! link PreProc RemPink
hi! link Include RemPink
hi! link Define RemPink
hi! link Macro RemPink
hi! link PreCondit RemPink
hi! link StorageClass RemPink
hi! link Structure RemPink
hi! link Typedef RemPink

hi! link Type RemCyanItalic

hi! link Delimiter RemFg

hi! link Special RemPink
hi! link SpecialComment RemCyanItalic
hi! link Tag RemCyan
hi! link helpHyperTextJump RemLink
hi! link helpCommand RemPurple
hi! link helpExample RemGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
