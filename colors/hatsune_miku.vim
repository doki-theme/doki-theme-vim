" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'hatsune_miku'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:hatsune_miku#palette.fg

let s:bglighter = g:hatsune_miku#palette.bglighter
let s:bglight   = g:hatsune_miku#palette.bglight
let s:bg        = g:hatsune_miku#palette.bg
let s:bgdark    = g:hatsune_miku#palette.bgdark
let s:bgdarker  = g:hatsune_miku#palette.bgdarker

let s:comment   = g:hatsune_miku#palette.comment
let s:selection = g:hatsune_miku#palette.selection
let s:subtle    = g:hatsune_miku#palette.subtle

let s:cyan      = g:hatsune_miku#palette.cyan
let s:green     = g:hatsune_miku#palette.green
let s:orange    = g:hatsune_miku#palette.orange
let s:pink      = g:hatsune_miku#palette.pink
let s:purple    = g:hatsune_miku#palette.purple
let s:red       = g:hatsune_miku#palette.red
let s:string_color    = g:hatsune_miku#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:hatsune_miku#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:hatsune_miku#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:hatsune_miku_bold')
  let g:hatsune_miku_bold = 1
endif

if !exists('g:hatsune_miku_italic')
  let g:hatsune_miku_italic = 1
endif

if !exists('g:hatsune_miku_underline')
  let g:hatsune_miku_underline = 1
endif

if !exists('g:hatsune_miku_undercurl') && g:hatsune_miku_underline != 0
  let g:hatsune_miku_undercurl = 1
endif

if !exists('g:hatsune_miku_inverse')
  let g:hatsune_miku_inverse = 1
endif

if !exists('g:hatsune_miku_colorterm')
  let g:hatsune_miku_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:hatsune_miku_bold == 1 ? 'bold' : 0,
      \ 'italic': g:hatsune_miku_italic == 1 ? 'italic' : 0,
      \ 'underline': g:hatsune_miku_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:hatsune_miku_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:hatsune_miku_inverse == 1 ? 'inverse' : 0,
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

call s:h('HatsuneMikuBgLight', s:none, s:bglight)
call s:h('HatsuneMikuBgLighter', s:none, s:bglighter)
call s:h('HatsuneMikuBgDark', s:none, s:bgdark)
call s:h('HatsuneMikuBgDarker', s:none, s:bgdarker)

call s:h('HatsuneMikuFg', s:fg)
call s:h('HatsuneMikuFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('HatsuneMikuFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('HatsuneMikuComment', s:comment)
call s:h('HatsuneMikuCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('HatsuneMikuSelection', s:none, s:selection)

call s:h('HatsuneMikuSubtle', s:subtle)

call s:h('HatsuneMikuCyan', s:cyan)
call s:h('HatsuneMikuCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('HatsuneMikuGreen', s:green)
call s:h('HatsuneMikuGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('HatsuneMikuGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('HatsuneMikuGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('HatsuneMikuOrange', s:orange)
call s:h('HatsuneMikuOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('HatsuneMikuOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('HatsuneMikuOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('HatsuneMikuOrangeInverse', s:bg, s:orange)

call s:h('HatsuneMikuPink', s:pink)
call s:h('HatsuneMikuPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('HatsuneMikuPurple', s:purple)
call s:h('HatsuneMikuPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('HatsuneMikuPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('HatsuneMikuRed', s:red)
call s:h('HatsuneMikuRedInverse', s:fg, s:red)

call s:h('HatsuneMikuStringColor', s:string_color)
call s:h('HatsuneMikuStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('HatsuneMikuError', s:red, s:none, [], s:red)

call s:h('HatsuneMikuErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('HatsuneMikuWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('HatsuneMikuInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('HatsuneMikuTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('HatsuneMikuSearch', s:green, s:none, [s:attrs.inverse])
call s:h('HatsuneMikuBoundary', s:comment, s:bgdark)
call s:h('HatsuneMikuLink', s:cyan, s:none, [s:attrs.underline])

call s:h('HatsuneMikuDiffChange', s:orange, s:none)
call s:h('HatsuneMikuDiffText', s:bg, s:orange)
call s:h('HatsuneMikuDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:hatsune_miku_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  HatsuneMikuBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr HatsuneMikuStringColor
hi! link DiffAdd      HatsuneMikuGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   HatsuneMikuDiffChange
hi! link DiffDelete   HatsuneMikuDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     HatsuneMikuDiffText
hi! link Directory    HatsuneMikuPurpleBold
hi! link ErrorMsg     HatsuneMikuRedInverse
hi! link FoldColumn   HatsuneMikuSubtle
hi! link Folded       HatsuneMikuBoundary
hi! link IncSearch    HatsuneMikuOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      HatsuneMikuFgBold
hi! link NonText      HatsuneMikuSubtle
" hi! link Pmenu        HatsuneMikuBgDark
" hi! link PmenuSbar    HatsuneMikuBgDark
hi! link PmenuSel     HatsuneMikuSelection
hi! link PmenuThumb   HatsuneMikuSelection
hi! link Question     HatsuneMikuFgBold
hi! link Search       HatsuneMikuSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      HatsuneMikuBoundary
" hi! link TabLineFill  HatsuneMikuBgDarker
hi! link TabLineSel   Normal
hi! link Title        HatsuneMikuGreenBold
hi! link VertSplit    HatsuneMikuBoundary
hi! link Visual       HatsuneMikuSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   HatsuneMikuOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey HatsuneMikuRed
  hi! link LspDiagnosticsUnderline HatsuneMikuFgUnderline
  hi! link LspDiagnosticsInformation HatsuneMikuCyan
  hi! link LspDiagnosticsHint HatsuneMikuCyan
  hi! link LspDiagnosticsError HatsuneMikuError
  hi! link LspDiagnosticsWarning HatsuneMikuOrange
  hi! link LspDiagnosticsUnderlineError HatsuneMikuErrorLine
  hi! link LspDiagnosticsUnderlineHint HatsuneMikuInfoLine
  hi! link LspDiagnosticsUnderlineInformation HatsuneMikuInfoLine
  hi! link LspDiagnosticsUnderlineWarning HatsuneMikuWarnLine
else
  hi! link SpecialKey HatsuneMikuSubtle
endif

hi! link Comment HatsuneMikuComment
hi! link Underlined HatsuneMikuFgUnderline
hi! link Todo HatsuneMikuTodo

hi! link Error HatsuneMikuError
hi! link SpellBad HatsuneMikuErrorLine
hi! link SpellLocal HatsuneMikuWarnLine
hi! link SpellCap HatsuneMikuInfoLine
hi! link SpellRare HatsuneMikuInfoLine

hi! link Constant HatsuneMikuPurple
hi! link String HatsuneMikuStringColor
hi! link Character HatsuneMikuPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier HatsuneMikuFg
hi! link Function HatsuneMikuGreen

hi! link Statement HatsuneMikuPink
hi! link Conditional HatsuneMikuPink
hi! link Repeat HatsuneMikuPink
hi! link Label HatsuneMikuPink
hi! link Operator HatsuneMikuPink
hi! link Keyword HatsuneMikuPink
hi! link Exception HatsuneMikuPink

hi! link PreProc HatsuneMikuPink
hi! link Include HatsuneMikuPink
hi! link Define HatsuneMikuPink
hi! link Macro HatsuneMikuPink
hi! link PreCondit HatsuneMikuPink
hi! link StorageClass HatsuneMikuPink
hi! link Structure HatsuneMikuPink
hi! link Typedef HatsuneMikuPink

hi! link Type HatsuneMikuCyanItalic

hi! link Delimiter HatsuneMikuFg

hi! link Special HatsuneMikuPink
hi! link SpecialComment HatsuneMikuCyanItalic
hi! link Tag HatsuneMikuCyan
hi! link helpHyperTextJump HatsuneMikuLink
hi! link helpCommand HatsuneMikuPurple
hi! link helpExample HatsuneMikuGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
