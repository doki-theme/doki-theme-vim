" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'natsuki-light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:natsuki-light#palette.fg

let s:bglighter = g:natsuki-light#palette.bglighter
let s:bglight   = g:natsuki-light#palette.bglight
let s:bg        = g:natsuki-light#palette.bg
let s:bgdark    = g:natsuki-light#palette.bgdark
let s:bgdarker  = g:natsuki-light#palette.bgdarker

let s:comment   = g:natsuki-light#palette.comment
let s:selection = g:natsuki-light#palette.selection
let s:subtle    = g:natsuki-light#palette.subtle

let s:cyan      = g:natsuki-light#palette.cyan
let s:green     = g:natsuki-light#palette.green
let s:orange    = g:natsuki-light#palette.orange
let s:pink      = g:natsuki-light#palette.pink
let s:purple    = g:natsuki-light#palette.purple
let s:red       = g:natsuki-light#palette.red
let s:yellow    = g:natsuki-light#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:natsuki-light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:natsuki-light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:natsuki-light_bold')
  let g:natsuki-light_bold = 1
endif

if !exists('g:natsuki-light_italic')
  let g:natsuki-light_italic = 1
endif

if !exists('g:natsuki-light_underline')
  let g:natsuki-light_underline = 1
endif

if !exists('g:natsuki-light_undercurl') && g:natsuki-light_underline != 0
  let g:natsuki-light_undercurl = 1
endif

if !exists('g:natsuki-light_inverse')
  let g:natsuki-light_inverse = 1
endif

if !exists('g:natsuki-light_colorterm')
  let g:natsuki-light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:natsuki-light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:natsuki-light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:natsuki-light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:natsuki-light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:natsuki-light_inverse == 1 ? 'inverse' : 0,
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
        \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
        \ 'guisp=' . l:special[0],
        \]

  execute join(l:hl_string, ' ')
endfunction

"}}}2
"Highlight Groups: 

call s:h('NatsukiLightBgLight', s:none, s:bglight)
call s:h('NatsukiLightBgLighter', s:none, s:bglighter)
call s:h('NatsukiLightBgDark', s:none, s:bgdark)
call s:h('NatsukiLightBgDarker', s:none, s:bgdarker)

call s:h('NatsukiLightFg', s:fg)
call s:h('NatsukiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NatsukiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NatsukiLightComment', s:comment)
call s:h('NatsukiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NatsukiLightSelection', s:none, s:selection)

call s:h('NatsukiLightSubtle', s:subtle)

call s:h('NatsukiLightCyan', s:cyan)
call s:h('NatsukiLightCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('NatsukiLightGreen', s:green)
call s:h('NatsukiLightGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('NatsukiLightGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('NatsukiLightGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NatsukiLightOrange', s:orange)
call s:h('NatsukiLightOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('NatsukiLightOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('NatsukiLightOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NatsukiLightOrangeInverse', s:bg, s:orange)

call s:h('NatsukiLightPink', s:pink)
call s:h('NatsukiLightPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('NatsukiLightPurple', s:purple)
call s:h('NatsukiLightPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('NatsukiLightPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('NatsukiLightRed', s:red)
call s:h('NatsukiLightRedInverse', s:fg, s:red)

call s:h('NatsukiLightYellow', s:yellow)
call s:h('NatsukiLightYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('NatsukiLightError', s:red, s:none, [], s:red)

call s:h('NatsukiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NatsukiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('NatsukiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('NatsukiLightTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NatsukiLightSearch', s:green, s:none, [s:attrs.inverse])
call s:h('NatsukiLightBoundary', s:comment, s:bgdark)
call s:h('NatsukiLightLink', s:cyan, s:none, [s:attrs.underline])

call s:h('NatsukiLightDiffChange', s:orange, s:none)
call s:h('NatsukiLightDiffText', s:bg, s:orange)
call s:h('NatsukiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:natsuki-light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  NatsukiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NatsukiLightYellow
hi! link DiffAdd      NatsukiLightGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NatsukiLightDiffChange
hi! link DiffDelete   NatsukiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NatsukiLightDiffText
hi! link Directory    NatsukiLightPurpleBold
hi! link ErrorMsg     NatsukiLightRedInverse
hi! link FoldColumn   NatsukiLightSubtle
hi! link Folded       NatsukiLightBoundary
hi! link IncSearch    NatsukiLightOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NatsukiLightFgBold
hi! link NonText      NatsukiLightSubtle
hi! link Pmenu        NatsukiLightBgDark
hi! link PmenuSbar    NatsukiLightBgDark
hi! link PmenuSel     NatsukiLightSelection
hi! link PmenuThumb   NatsukiLightSelection
hi! link Question     NatsukiLightFgBold
hi! link Search       NatsukiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NatsukiLightBoundary
hi! link TabLineFill  NatsukiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        NatsukiLightGreenBold
hi! link VertSplit    NatsukiLightBoundary
hi! link Visual       NatsukiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NatsukiLightOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NatsukiLightRed
  hi! link LspDiagnosticsUnderline NatsukiLightFgUnderline
  hi! link LspDiagnosticsInformation NatsukiLightCyan
  hi! link LspDiagnosticsHint NatsukiLightCyan
  hi! link LspDiagnosticsError NatsukiLightError
  hi! link LspDiagnosticsWarning NatsukiLightOrange
  hi! link LspDiagnosticsUnderlineError NatsukiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint NatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation NatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning NatsukiLightWarnLine
else
  hi! link SpecialKey NatsukiLightSubtle
endif

hi! link Comment NatsukiLightComment
hi! link Underlined NatsukiLightFgUnderline
hi! link Todo NatsukiLightTodo

hi! link Error NatsukiLightError
hi! link SpellBad NatsukiLightErrorLine
hi! link SpellLocal NatsukiLightWarnLine
hi! link SpellCap NatsukiLightInfoLine
hi! link SpellRare NatsukiLightInfoLine

hi! link Constant NatsukiLightPurple
hi! link String NatsukiLightYellow
hi! link Character NatsukiLightPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NatsukiLightFg
hi! link Function NatsukiLightGreen

hi! link Statement NatsukiLightPink
hi! link Conditional NatsukiLightPink
hi! link Repeat NatsukiLightPink
hi! link Label NatsukiLightPink
hi! link Operator NatsukiLightPink
hi! link Keyword NatsukiLightPink
hi! link Exception NatsukiLightPink

hi! link PreProc NatsukiLightPink
hi! link Include NatsukiLightPink
hi! link Define NatsukiLightPink
hi! link Macro NatsukiLightPink
hi! link PreCondit NatsukiLightPink
hi! link StorageClass NatsukiLightPink
hi! link Structure NatsukiLightPink
hi! link Typedef NatsukiLightPink

hi! link Type NatsukiLightCyanItalic

hi! link Delimiter NatsukiLightFg

hi! link Special NatsukiLightPink
hi! link SpecialComment NatsukiLightCyanItalic
hi! link Tag NatsukiLightCyan
hi! link helpHyperTextJump NatsukiLightLink
hi! link helpCommand NatsukiLightPurple
hi! link helpExample NatsukiLightGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
