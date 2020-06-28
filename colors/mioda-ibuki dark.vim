" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mioda-ibuki dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mioda-ibuki dark#palette.fg

let s:bglighter = g:mioda-ibuki dark#palette.bglighter
let s:bglight   = g:mioda-ibuki dark#palette.bglight
let s:bg        = g:mioda-ibuki dark#palette.bg
let s:bgdark    = g:mioda-ibuki dark#palette.bgdark
let s:bgdarker  = g:mioda-ibuki dark#palette.bgdarker

let s:comment   = g:mioda-ibuki dark#palette.comment
let s:selection = g:mioda-ibuki dark#palette.selection
let s:subtle    = g:mioda-ibuki dark#palette.subtle

let s:cyan      = g:mioda-ibuki dark#palette.cyan
let s:green     = g:mioda-ibuki dark#palette.green
let s:orange    = g:mioda-ibuki dark#palette.orange
let s:pink      = g:mioda-ibuki dark#palette.pink
let s:purple    = g:mioda-ibuki dark#palette.purple
let s:red       = g:mioda-ibuki dark#palette.red
let s:yellow    = g:mioda-ibuki dark#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mioda-ibuki dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mioda-ibuki dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mioda-ibuki dark_bold')
  let g:mioda-ibuki dark_bold = 1
endif

if !exists('g:mioda-ibuki dark_italic')
  let g:mioda-ibuki dark_italic = 1
endif

if !exists('g:mioda-ibuki dark_underline')
  let g:mioda-ibuki dark_underline = 1
endif

if !exists('g:mioda-ibuki dark_undercurl') && g:mioda-ibuki dark_underline != 0
  let g:mioda-ibuki dark_undercurl = 1
endif

if !exists('g:mioda-ibuki dark_inverse')
  let g:mioda-ibuki dark_inverse = 1
endif

if !exists('g:mioda-ibuki dark_colorterm')
  let g:mioda-ibuki dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mioda-ibuki dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mioda-ibuki dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mioda-ibuki dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mioda-ibuki dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mioda-ibuki dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('MiodaIbukiDarkBgLight', s:none, s:bglight)
call s:h('MiodaIbukiDarkBgLighter', s:none, s:bglighter)
call s:h('MiodaIbukiDarkBgDark', s:none, s:bgdark)
call s:h('MiodaIbukiDarkBgDarker', s:none, s:bgdarker)

call s:h('MiodaIbukiDarkFg', s:fg)
call s:h('MiodaIbukiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MiodaIbukiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MiodaIbukiDarkComment', s:comment)
call s:h('MiodaIbukiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MiodaIbukiDarkSelection', s:none, s:selection)

call s:h('MiodaIbukiDarkSubtle', s:subtle)

call s:h('MiodaIbukiDarkCyan', s:cyan)
call s:h('MiodaIbukiDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkGreen', s:green)
call s:h('MiodaIbukiDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('MiodaIbukiDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MiodaIbukiDarkOrange', s:orange)
call s:h('MiodaIbukiDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('MiodaIbukiDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MiodaIbukiDarkOrangeInverse', s:bg, s:orange)

call s:h('MiodaIbukiDarkPink', s:pink)
call s:h('MiodaIbukiDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkPurple', s:purple)
call s:h('MiodaIbukiDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkRed', s:red)
call s:h('MiodaIbukiDarkRedInverse', s:fg, s:red)

call s:h('MiodaIbukiDarkYellow', s:yellow)
call s:h('MiodaIbukiDarkYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkError', s:red, s:none, [], s:red)

call s:h('MiodaIbukiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MiodaIbukiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('MiodaIbukiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('MiodaIbukiDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MiodaIbukiDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('MiodaIbukiDarkBoundary', s:comment, s:bgdark)
call s:h('MiodaIbukiDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('MiodaIbukiDarkDiffChange', s:orange, s:none)
call s:h('MiodaIbukiDarkDiffText', s:bg, s:orange)
call s:h('MiodaIbukiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:mioda-ibuki dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  MiodaIbukiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MiodaIbukiDarkYellow
hi! link DiffAdd      MiodaIbukiDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MiodaIbukiDarkDiffChange
hi! link DiffDelete   MiodaIbukiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MiodaIbukiDarkDiffText
hi! link Directory    MiodaIbukiDarkPurpleBold
hi! link ErrorMsg     MiodaIbukiDarkRedInverse
hi! link FoldColumn   MiodaIbukiDarkSubtle
hi! link Folded       MiodaIbukiDarkBoundary
hi! link IncSearch    MiodaIbukiDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MiodaIbukiDarkFgBold
hi! link NonText      MiodaIbukiDarkSubtle
hi! link Pmenu        MiodaIbukiDarkBgDark
hi! link PmenuSbar    MiodaIbukiDarkBgDark
hi! link PmenuSel     MiodaIbukiDarkSelection
hi! link PmenuThumb   MiodaIbukiDarkSelection
hi! link Question     MiodaIbukiDarkFgBold
hi! link Search       MiodaIbukiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MiodaIbukiDarkBoundary
hi! link TabLineFill  MiodaIbukiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        MiodaIbukiDarkGreenBold
hi! link VertSplit    MiodaIbukiDarkBoundary
hi! link Visual       MiodaIbukiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MiodaIbukiDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MiodaIbukiDarkRed
  hi! link LspDiagnosticsUnderline MiodaIbukiDarkFgUnderline
  hi! link LspDiagnosticsInformation MiodaIbukiDarkCyan
  hi! link LspDiagnosticsHint MiodaIbukiDarkCyan
  hi! link LspDiagnosticsError MiodaIbukiDarkError
  hi! link LspDiagnosticsWarning MiodaIbukiDarkOrange
  hi! link LspDiagnosticsUnderlineError MiodaIbukiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint MiodaIbukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation MiodaIbukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning MiodaIbukiDarkWarnLine
else
  hi! link SpecialKey MiodaIbukiDarkSubtle
endif

hi! link Comment MiodaIbukiDarkComment
hi! link Underlined MiodaIbukiDarkFgUnderline
hi! link Todo MiodaIbukiDarkTodo

hi! link Error MiodaIbukiDarkError
hi! link SpellBad MiodaIbukiDarkErrorLine
hi! link SpellLocal MiodaIbukiDarkWarnLine
hi! link SpellCap MiodaIbukiDarkInfoLine
hi! link SpellRare MiodaIbukiDarkInfoLine

hi! link Constant MiodaIbukiDarkPurple
hi! link String MiodaIbukiDarkYellow
hi! link Character MiodaIbukiDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MiodaIbukiDarkFg
hi! link Function MiodaIbukiDarkGreen

hi! link Statement MiodaIbukiDarkPink
hi! link Conditional MiodaIbukiDarkPink
hi! link Repeat MiodaIbukiDarkPink
hi! link Label MiodaIbukiDarkPink
hi! link Operator MiodaIbukiDarkPink
hi! link Keyword MiodaIbukiDarkPink
hi! link Exception MiodaIbukiDarkPink

hi! link PreProc MiodaIbukiDarkPink
hi! link Include MiodaIbukiDarkPink
hi! link Define MiodaIbukiDarkPink
hi! link Macro MiodaIbukiDarkPink
hi! link PreCondit MiodaIbukiDarkPink
hi! link StorageClass MiodaIbukiDarkPink
hi! link Structure MiodaIbukiDarkPink
hi! link Typedef MiodaIbukiDarkPink

hi! link Type MiodaIbukiDarkCyanItalic

hi! link Delimiter MiodaIbukiDarkFg

hi! link Special MiodaIbukiDarkPink
hi! link SpecialComment MiodaIbukiDarkCyanItalic
hi! link Tag MiodaIbukiDarkCyan
hi! link helpHyperTextJump MiodaIbukiDarkLink
hi! link helpCommand MiodaIbukiDarkPurple
hi! link helpExample MiodaIbukiDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
