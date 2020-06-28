" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'natsuki-dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:natsuki-dark#palette.fg

let s:bglighter = g:natsuki-dark#palette.bglighter
let s:bglight   = g:natsuki-dark#palette.bglight
let s:bg        = g:natsuki-dark#palette.bg
let s:bgdark    = g:natsuki-dark#palette.bgdark
let s:bgdarker  = g:natsuki-dark#palette.bgdarker

let s:comment   = g:natsuki-dark#palette.comment
let s:selection = g:natsuki-dark#palette.selection
let s:subtle    = g:natsuki-dark#palette.subtle

let s:cyan      = g:natsuki-dark#palette.cyan
let s:green     = g:natsuki-dark#palette.green
let s:orange    = g:natsuki-dark#palette.orange
let s:pink      = g:natsuki-dark#palette.pink
let s:purple    = g:natsuki-dark#palette.purple
let s:red       = g:natsuki-dark#palette.red
let s:yellow    = g:natsuki-dark#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:natsuki-dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:natsuki-dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:natsuki-dark_bold')
  let g:natsuki-dark_bold = 1
endif

if !exists('g:natsuki-dark_italic')
  let g:natsuki-dark_italic = 1
endif

if !exists('g:natsuki-dark_underline')
  let g:natsuki-dark_underline = 1
endif

if !exists('g:natsuki-dark_undercurl') && g:natsuki-dark_underline != 0
  let g:natsuki-dark_undercurl = 1
endif

if !exists('g:natsuki-dark_inverse')
  let g:natsuki-dark_inverse = 1
endif

if !exists('g:natsuki-dark_colorterm')
  let g:natsuki-dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:natsuki-dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:natsuki-dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:natsuki-dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:natsuki-dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:natsuki-dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('NatsukiDarkBgLight', s:none, s:bglight)
call s:h('NatsukiDarkBgLighter', s:none, s:bglighter)
call s:h('NatsukiDarkBgDark', s:none, s:bgdark)
call s:h('NatsukiDarkBgDarker', s:none, s:bgdarker)

call s:h('NatsukiDarkFg', s:fg)
call s:h('NatsukiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NatsukiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NatsukiDarkComment', s:comment)
call s:h('NatsukiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NatsukiDarkSelection', s:none, s:selection)

call s:h('NatsukiDarkSubtle', s:subtle)

call s:h('NatsukiDarkCyan', s:cyan)
call s:h('NatsukiDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('NatsukiDarkGreen', s:green)
call s:h('NatsukiDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('NatsukiDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('NatsukiDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NatsukiDarkOrange', s:orange)
call s:h('NatsukiDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('NatsukiDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('NatsukiDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NatsukiDarkOrangeInverse', s:bg, s:orange)

call s:h('NatsukiDarkPink', s:pink)
call s:h('NatsukiDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('NatsukiDarkPurple', s:purple)
call s:h('NatsukiDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('NatsukiDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('NatsukiDarkRed', s:red)
call s:h('NatsukiDarkRedInverse', s:fg, s:red)

call s:h('NatsukiDarkYellow', s:yellow)
call s:h('NatsukiDarkYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('NatsukiDarkError', s:red, s:none, [], s:red)

call s:h('NatsukiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NatsukiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('NatsukiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('NatsukiDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NatsukiDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('NatsukiDarkBoundary', s:comment, s:bgdark)
call s:h('NatsukiDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('NatsukiDarkDiffChange', s:orange, s:none)
call s:h('NatsukiDarkDiffText', s:bg, s:orange)
call s:h('NatsukiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:natsuki-dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  NatsukiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NatsukiDarkYellow
hi! link DiffAdd      NatsukiDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NatsukiDarkDiffChange
hi! link DiffDelete   NatsukiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NatsukiDarkDiffText
hi! link Directory    NatsukiDarkPurpleBold
hi! link ErrorMsg     NatsukiDarkRedInverse
hi! link FoldColumn   NatsukiDarkSubtle
hi! link Folded       NatsukiDarkBoundary
hi! link IncSearch    NatsukiDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NatsukiDarkFgBold
hi! link NonText      NatsukiDarkSubtle
hi! link Pmenu        NatsukiDarkBgDark
hi! link PmenuSbar    NatsukiDarkBgDark
hi! link PmenuSel     NatsukiDarkSelection
hi! link PmenuThumb   NatsukiDarkSelection
hi! link Question     NatsukiDarkFgBold
hi! link Search       NatsukiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NatsukiDarkBoundary
hi! link TabLineFill  NatsukiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        NatsukiDarkGreenBold
hi! link VertSplit    NatsukiDarkBoundary
hi! link Visual       NatsukiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NatsukiDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NatsukiDarkRed
  hi! link LspDiagnosticsUnderline NatsukiDarkFgUnderline
  hi! link LspDiagnosticsInformation NatsukiDarkCyan
  hi! link LspDiagnosticsHint NatsukiDarkCyan
  hi! link LspDiagnosticsError NatsukiDarkError
  hi! link LspDiagnosticsWarning NatsukiDarkOrange
  hi! link LspDiagnosticsUnderlineError NatsukiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint NatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation NatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning NatsukiDarkWarnLine
else
  hi! link SpecialKey NatsukiDarkSubtle
endif

hi! link Comment NatsukiDarkComment
hi! link Underlined NatsukiDarkFgUnderline
hi! link Todo NatsukiDarkTodo

hi! link Error NatsukiDarkError
hi! link SpellBad NatsukiDarkErrorLine
hi! link SpellLocal NatsukiDarkWarnLine
hi! link SpellCap NatsukiDarkInfoLine
hi! link SpellRare NatsukiDarkInfoLine

hi! link Constant NatsukiDarkPurple
hi! link String NatsukiDarkYellow
hi! link Character NatsukiDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NatsukiDarkFg
hi! link Function NatsukiDarkGreen

hi! link Statement NatsukiDarkPink
hi! link Conditional NatsukiDarkPink
hi! link Repeat NatsukiDarkPink
hi! link Label NatsukiDarkPink
hi! link Operator NatsukiDarkPink
hi! link Keyword NatsukiDarkPink
hi! link Exception NatsukiDarkPink

hi! link PreProc NatsukiDarkPink
hi! link Include NatsukiDarkPink
hi! link Define NatsukiDarkPink
hi! link Macro NatsukiDarkPink
hi! link PreCondit NatsukiDarkPink
hi! link StorageClass NatsukiDarkPink
hi! link Structure NatsukiDarkPink
hi! link Typedef NatsukiDarkPink

hi! link Type NatsukiDarkCyanItalic

hi! link Delimiter NatsukiDarkFg

hi! link Special NatsukiDarkPink
hi! link SpecialComment NatsukiDarkCyanItalic
hi! link Tag NatsukiDarkCyan
hi! link helpHyperTextJump NatsukiDarkLink
hi! link helpCommand NatsukiDarkPurple
hi! link helpExample NatsukiDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
