" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'monika-light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:monika-light#palette.fg

let s:bglighter = g:monika-light#palette.bglighter
let s:bglight   = g:monika-light#palette.bglight
let s:bg        = g:monika-light#palette.bg
let s:bgdark    = g:monika-light#palette.bgdark
let s:bgdarker  = g:monika-light#palette.bgdarker

let s:comment   = g:monika-light#palette.comment
let s:selection = g:monika-light#palette.selection
let s:subtle    = g:monika-light#palette.subtle

let s:cyan      = g:monika-light#palette.cyan
let s:green     = g:monika-light#palette.green
let s:orange    = g:monika-light#palette.orange
let s:pink      = g:monika-light#palette.pink
let s:purple    = g:monika-light#palette.purple
let s:red       = g:monika-light#palette.red
let s:yellow    = g:monika-light#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:monika-light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:monika-light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:monika-light_bold')
  let g:monika-light_bold = 1
endif

if !exists('g:monika-light_italic')
  let g:monika-light_italic = 1
endif

if !exists('g:monika-light_underline')
  let g:monika-light_underline = 1
endif

if !exists('g:monika-light_undercurl') && g:monika-light_underline != 0
  let g:monika-light_undercurl = 1
endif

if !exists('g:monika-light_inverse')
  let g:monika-light_inverse = 1
endif

if !exists('g:monika-light_colorterm')
  let g:monika-light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:monika-light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:monika-light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:monika-light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:monika-light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:monika-light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MonikaLightBgLight', s:none, s:bglight)
call s:h('MonikaLightBgLighter', s:none, s:bglighter)
call s:h('MonikaLightBgDark', s:none, s:bgdark)
call s:h('MonikaLightBgDarker', s:none, s:bgdarker)

call s:h('MonikaLightFg', s:fg)
call s:h('MonikaLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MonikaLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MonikaLightComment', s:comment)
call s:h('MonikaLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MonikaLightSelection', s:none, s:selection)

call s:h('MonikaLightSubtle', s:subtle)

call s:h('MonikaLightCyan', s:cyan)
call s:h('MonikaLightCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('MonikaLightGreen', s:green)
call s:h('MonikaLightGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('MonikaLightGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('MonikaLightGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MonikaLightOrange', s:orange)
call s:h('MonikaLightOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('MonikaLightOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('MonikaLightOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MonikaLightOrangeInverse', s:bg, s:orange)

call s:h('MonikaLightPink', s:pink)
call s:h('MonikaLightPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('MonikaLightPurple', s:purple)
call s:h('MonikaLightPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('MonikaLightPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('MonikaLightRed', s:red)
call s:h('MonikaLightRedInverse', s:fg, s:red)

call s:h('MonikaLightYellow', s:yellow)
call s:h('MonikaLightYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('MonikaLightError', s:red, s:none, [], s:red)

call s:h('MonikaLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MonikaLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('MonikaLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('MonikaLightTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MonikaLightSearch', s:green, s:none, [s:attrs.inverse])
call s:h('MonikaLightBoundary', s:comment, s:bgdark)
call s:h('MonikaLightLink', s:cyan, s:none, [s:attrs.underline])

call s:h('MonikaLightDiffChange', s:orange, s:none)
call s:h('MonikaLightDiffText', s:bg, s:orange)
call s:h('MonikaLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:monika-light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  MonikaLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MonikaLightYellow
hi! link DiffAdd      MonikaLightGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MonikaLightDiffChange
hi! link DiffDelete   MonikaLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MonikaLightDiffText
hi! link Directory    MonikaLightPurpleBold
hi! link ErrorMsg     MonikaLightRedInverse
hi! link FoldColumn   MonikaLightSubtle
hi! link Folded       MonikaLightBoundary
hi! link IncSearch    MonikaLightOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MonikaLightFgBold
hi! link NonText      MonikaLightSubtle
hi! link Pmenu        MonikaLightBgDark
hi! link PmenuSbar    MonikaLightBgDark
hi! link PmenuSel     MonikaLightSelection
hi! link PmenuThumb   MonikaLightSelection
hi! link Question     MonikaLightFgBold
hi! link Search       MonikaLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MonikaLightBoundary
hi! link TabLineFill  MonikaLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MonikaLightGreenBold
hi! link VertSplit    MonikaLightBoundary
hi! link Visual       MonikaLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MonikaLightOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MonikaLightRed
  hi! link LspDiagnosticsUnderline MonikaLightFgUnderline
  hi! link LspDiagnosticsInformation MonikaLightCyan
  hi! link LspDiagnosticsHint MonikaLightCyan
  hi! link LspDiagnosticsError MonikaLightError
  hi! link LspDiagnosticsWarning MonikaLightOrange
  hi! link LspDiagnosticsUnderlineError MonikaLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MonikaLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MonikaLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MonikaLightWarnLine
else
  hi! link SpecialKey MonikaLightSubtle
endif

hi! link Comment MonikaLightComment
hi! link Underlined MonikaLightFgUnderline
hi! link Todo MonikaLightTodo

hi! link Error MonikaLightError
hi! link SpellBad MonikaLightErrorLine
hi! link SpellLocal MonikaLightWarnLine
hi! link SpellCap MonikaLightInfoLine
hi! link SpellRare MonikaLightInfoLine

hi! link Constant MonikaLightPurple
hi! link String MonikaLightYellow
hi! link Character MonikaLightPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MonikaLightFg
hi! link Function MonikaLightGreen

hi! link Statement MonikaLightPink
hi! link Conditional MonikaLightPink
hi! link Repeat MonikaLightPink
hi! link Label MonikaLightPink
hi! link Operator MonikaLightPink
hi! link Keyword MonikaLightPink
hi! link Exception MonikaLightPink

hi! link PreProc MonikaLightPink
hi! link Include MonikaLightPink
hi! link Define MonikaLightPink
hi! link Macro MonikaLightPink
hi! link PreCondit MonikaLightPink
hi! link StorageClass MonikaLightPink
hi! link Structure MonikaLightPink
hi! link Typedef MonikaLightPink

hi! link Type MonikaLightCyanItalic

hi! link Delimiter MonikaLightFg

hi! link Special MonikaLightPink
hi! link SpecialComment MonikaLightCyanItalic
hi! link Tag MonikaLightCyan
hi! link helpHyperTextJump MonikaLightLink
hi! link helpCommand MonikaLightPurple
hi! link helpExample MonikaLightGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
