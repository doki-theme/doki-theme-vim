" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'konata'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:konata#palette.fg

let s:bglighter = g:konata#palette.bglighter
let s:bglight   = g:konata#palette.bglight
let s:bg        = g:konata#palette.bg
let s:bgdark    = g:konata#palette.bgdark
let s:bgdarker  = g:konata#palette.bgdarker

let s:comment   = g:konata#palette.comment
let s:selection = g:konata#palette.selection
let s:subtle    = g:konata#palette.subtle

let s:cyan      = g:konata#palette.cyan
let s:green     = g:konata#palette.green
let s:orange    = g:konata#palette.orange
let s:pink      = g:konata#palette.pink
let s:purple    = g:konata#palette.purple
let s:red       = g:konata#palette.red
let s:yellow    = g:konata#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:konata#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:konata#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:konata_bold')
  let g:konata_bold = 1
endif

if !exists('g:konata_italic')
  let g:konata_italic = 1
endif

if !exists('g:konata_underline')
  let g:konata_underline = 1
endif

if !exists('g:konata_undercurl') && g:konata_underline != 0
  let g:konata_undercurl = 1
endif

if !exists('g:konata_inverse')
  let g:konata_inverse = 1
endif

if !exists('g:konata_colorterm')
  let g:konata_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:konata_bold == 1 ? 'bold' : 0,
      \ 'italic': g:konata_italic == 1 ? 'italic' : 0,
      \ 'underline': g:konata_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:konata_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:konata_inverse == 1 ? 'inverse' : 0,
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

call s:h('KonataBgLight', s:none, s:bglight)
call s:h('KonataBgLighter', s:none, s:bglighter)
call s:h('KonataBgDark', s:none, s:bgdark)
call s:h('KonataBgDarker', s:none, s:bgdarker)

call s:h('KonataFg', s:fg)
call s:h('KonataFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('KonataFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('KonataComment', s:comment)
call s:h('KonataCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('KonataSelection', s:none, s:selection)

call s:h('KonataSubtle', s:subtle)

call s:h('KonataCyan', s:cyan)
call s:h('KonataCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('KonataGreen', s:green)
call s:h('KonataGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('KonataGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('KonataGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('KonataOrange', s:orange)
call s:h('KonataOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('KonataOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('KonataOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('KonataOrangeInverse', s:bg, s:orange)

call s:h('KonataPink', s:pink)
call s:h('KonataPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('KonataPurple', s:purple)
call s:h('KonataPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('KonataPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('KonataRed', s:red)
call s:h('KonataRedInverse', s:fg, s:red)

call s:h('KonataYellow', s:yellow)
call s:h('KonataYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('KonataError', s:red, s:none, [], s:red)

call s:h('KonataErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('KonataWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('KonataInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('KonataTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('KonataSearch', s:green, s:none, [s:attrs.inverse])
call s:h('KonataBoundary', s:comment, s:bgdark)
call s:h('KonataLink', s:cyan, s:none, [s:attrs.underline])

call s:h('KonataDiffChange', s:orange, s:none)
call s:h('KonataDiffText', s:bg, s:orange)
call s:h('KonataDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:konata_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  KonataBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr KonataYellow
hi! link DiffAdd      KonataGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   KonataDiffChange
hi! link DiffDelete   KonataDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     KonataDiffText
hi! link Directory    KonataPurpleBold
hi! link ErrorMsg     KonataRedInverse
hi! link FoldColumn   KonataSubtle
hi! link Folded       KonataBoundary
hi! link IncSearch    KonataOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      KonataFgBold
hi! link NonText      KonataSubtle
hi! link Pmenu        KonataBgDark
hi! link PmenuSbar    KonataBgDark
hi! link PmenuSel     KonataSelection
hi! link PmenuThumb   KonataSelection
hi! link Question     KonataFgBold
hi! link Search       KonataSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      KonataBoundary
hi! link TabLineFill  KonataBgDarker
hi! link TabLineSel   Normal
hi! link Title        KonataGreenBold
hi! link VertSplit    KonataBoundary
hi! link Visual       KonataSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   KonataOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey KonataRed
  hi! link LspDiagnosticsUnderline KonataFgUnderline
  hi! link LspDiagnosticsInformation KonataCyan
  hi! link LspDiagnosticsHint KonataCyan
  hi! link LspDiagnosticsError KonataError
  hi! link LspDiagnosticsWarning KonataOrange
  hi! link LspDiagnosticsUnderlineError KonataErrorLine
  hi! link LspDiagnosticsUnderlineHint KonataInfoLine
  hi! link LspDiagnosticsUnderlineInformation KonataInfoLine
  hi! link LspDiagnosticsUnderlineWarning KonataWarnLine
else
  hi! link SpecialKey KonataSubtle
endif

hi! link Comment KonataComment
hi! link Underlined KonataFgUnderline
hi! link Todo KonataTodo

hi! link Error KonataError
hi! link SpellBad KonataErrorLine
hi! link SpellLocal KonataWarnLine
hi! link SpellCap KonataInfoLine
hi! link SpellRare KonataInfoLine

hi! link Constant KonataPurple
hi! link String KonataYellow
hi! link Character KonataPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier KonataFg
hi! link Function KonataGreen

hi! link Statement KonataPink
hi! link Conditional KonataPink
hi! link Repeat KonataPink
hi! link Label KonataPink
hi! link Operator KonataPink
hi! link Keyword KonataPink
hi! link Exception KonataPink

hi! link PreProc KonataPink
hi! link Include KonataPink
hi! link Define KonataPink
hi! link Macro KonataPink
hi! link PreCondit KonataPink
hi! link StorageClass KonataPink
hi! link Structure KonataPink
hi! link Typedef KonataPink

hi! link Type KonataCyanItalic

hi! link Delimiter KonataFg

hi! link Special KonataPink
hi! link SpecialComment KonataCyanItalic
hi! link Tag KonataCyan
hi! link helpHyperTextJump KonataLink
hi! link helpCommand KonataPurple
hi! link helpExample KonataGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
