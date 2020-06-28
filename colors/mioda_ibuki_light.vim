" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mioda_ibuki_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mioda_ibuki_light#palette.fg

let s:bglighter = g:mioda_ibuki_light#palette.bglighter
let s:bglight   = g:mioda_ibuki_light#palette.bglight
let s:bg        = g:mioda_ibuki_light#palette.bg
let s:bgdark    = g:mioda_ibuki_light#palette.bgdark
let s:bgdarker  = g:mioda_ibuki_light#palette.bgdarker

let s:comment   = g:mioda_ibuki_light#palette.comment
let s:selection = g:mioda_ibuki_light#palette.selection
let s:subtle    = g:mioda_ibuki_light#palette.subtle

let s:cyan      = g:mioda_ibuki_light#palette.cyan
let s:green     = g:mioda_ibuki_light#palette.green
let s:orange    = g:mioda_ibuki_light#palette.orange
let s:pink      = g:mioda_ibuki_light#palette.pink
let s:purple    = g:mioda_ibuki_light#palette.purple
let s:red       = g:mioda_ibuki_light#palette.red
let s:string_color    = g:mioda_ibuki_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mioda_ibuki_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mioda_ibuki_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mioda_ibuki_light_bold')
  let g:mioda_ibuki_light_bold = 1
endif

if !exists('g:mioda_ibuki_light_italic')
  let g:mioda_ibuki_light_italic = 1
endif

if !exists('g:mioda_ibuki_light_underline')
  let g:mioda_ibuki_light_underline = 1
endif

if !exists('g:mioda_ibuki_light_undercurl') && g:mioda_ibuki_light_underline != 0
  let g:mioda_ibuki_light_undercurl = 1
endif

if !exists('g:mioda_ibuki_light_inverse')
  let g:mioda_ibuki_light_inverse = 1
endif

if !exists('g:mioda_ibuki_light_colorterm')
  let g:mioda_ibuki_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mioda_ibuki_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mioda_ibuki_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mioda_ibuki_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mioda_ibuki_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mioda_ibuki_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MiodaIbukiLightBgLight', s:none, s:bglight)
call s:h('MiodaIbukiLightBgLighter', s:none, s:bglighter)
call s:h('MiodaIbukiLightBgDark', s:none, s:bgdark)
call s:h('MiodaIbukiLightBgDarker', s:none, s:bgdarker)

call s:h('MiodaIbukiLightFg', s:fg)
call s:h('MiodaIbukiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MiodaIbukiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MiodaIbukiLightComment', s:comment)
call s:h('MiodaIbukiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MiodaIbukiLightSelection', s:none, s:selection)

call s:h('MiodaIbukiLightSubtle', s:subtle)

call s:h('MiodaIbukiLightCyan', s:cyan)
call s:h('MiodaIbukiLightCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightGreen', s:green)
call s:h('MiodaIbukiLightGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('MiodaIbukiLightGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MiodaIbukiLightOrange', s:orange)
call s:h('MiodaIbukiLightOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('MiodaIbukiLightOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MiodaIbukiLightOrangeInverse', s:bg, s:orange)

call s:h('MiodaIbukiLightPink', s:pink)
call s:h('MiodaIbukiLightPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightPurple', s:purple)
call s:h('MiodaIbukiLightPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightRed', s:red)
call s:h('MiodaIbukiLightRedInverse', s:fg, s:red)

call s:h('MiodaIbukiLightStringColor', s:string_color)
call s:h('MiodaIbukiLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightError', s:red, s:none, [], s:red)

call s:h('MiodaIbukiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MiodaIbukiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('MiodaIbukiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('MiodaIbukiLightTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MiodaIbukiLightSearch', s:green, s:none, [s:attrs.inverse])
call s:h('MiodaIbukiLightBoundary', s:comment, s:bgdark)
call s:h('MiodaIbukiLightLink', s:cyan, s:none, [s:attrs.underline])

call s:h('MiodaIbukiLightDiffChange', s:orange, s:none)
call s:h('MiodaIbukiLightDiffText', s:bg, s:orange)
call s:h('MiodaIbukiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:mioda_ibuki_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MiodaIbukiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MiodaIbukiLightStringColor
hi! link DiffAdd      MiodaIbukiLightGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MiodaIbukiLightDiffChange
hi! link DiffDelete   MiodaIbukiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MiodaIbukiLightDiffText
hi! link Directory    MiodaIbukiLightPurpleBold
hi! link ErrorMsg     MiodaIbukiLightRedInverse
hi! link FoldColumn   MiodaIbukiLightSubtle
hi! link Folded       MiodaIbukiLightBoundary
hi! link IncSearch    MiodaIbukiLightOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MiodaIbukiLightFgBold
hi! link NonText      MiodaIbukiLightSubtle
" hi! link Pmenu        MiodaIbukiLightBgDark
" hi! link PmenuSbar    MiodaIbukiLightBgDark
hi! link PmenuSel     MiodaIbukiLightSelection
hi! link PmenuThumb   MiodaIbukiLightSelection
hi! link Question     MiodaIbukiLightFgBold
hi! link Search       MiodaIbukiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MiodaIbukiLightBoundary
" hi! link TabLineFill  MiodaIbukiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MiodaIbukiLightGreenBold
hi! link VertSplit    MiodaIbukiLightBoundary
hi! link Visual       MiodaIbukiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MiodaIbukiLightOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MiodaIbukiLightRed
  hi! link LspDiagnosticsUnderline MiodaIbukiLightFgUnderline
  hi! link LspDiagnosticsInformation MiodaIbukiLightCyan
  hi! link LspDiagnosticsHint MiodaIbukiLightCyan
  hi! link LspDiagnosticsError MiodaIbukiLightError
  hi! link LspDiagnosticsWarning MiodaIbukiLightOrange
  hi! link LspDiagnosticsUnderlineError MiodaIbukiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MiodaIbukiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MiodaIbukiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MiodaIbukiLightWarnLine
else
  hi! link SpecialKey MiodaIbukiLightSubtle
endif

hi! link Comment MiodaIbukiLightComment
hi! link Underlined MiodaIbukiLightFgUnderline
hi! link Todo MiodaIbukiLightTodo

hi! link Error MiodaIbukiLightError
hi! link SpellBad MiodaIbukiLightErrorLine
hi! link SpellLocal MiodaIbukiLightWarnLine
hi! link SpellCap MiodaIbukiLightInfoLine
hi! link SpellRare MiodaIbukiLightInfoLine

hi! link Constant MiodaIbukiLightPurple
hi! link String MiodaIbukiLightStringColor
hi! link Character MiodaIbukiLightPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MiodaIbukiLightFg
hi! link Function MiodaIbukiLightGreen

hi! link Statement MiodaIbukiLightPink
hi! link Conditional MiodaIbukiLightPink
hi! link Repeat MiodaIbukiLightPink
hi! link Label MiodaIbukiLightPink
hi! link Operator MiodaIbukiLightPink
hi! link Keyword MiodaIbukiLightPink
hi! link Exception MiodaIbukiLightPink

hi! link PreProc MiodaIbukiLightPink
hi! link Include MiodaIbukiLightPink
hi! link Define MiodaIbukiLightPink
hi! link Macro MiodaIbukiLightPink
hi! link PreCondit MiodaIbukiLightPink
hi! link StorageClass MiodaIbukiLightPink
hi! link Structure MiodaIbukiLightPink
hi! link Typedef MiodaIbukiLightPink

hi! link Type MiodaIbukiLightCyanItalic

hi! link Delimiter MiodaIbukiLightFg

hi! link Special MiodaIbukiLightPink
hi! link SpecialComment MiodaIbukiLightCyanItalic
hi! link Tag MiodaIbukiLightCyan
hi! link helpHyperTextJump MiodaIbukiLightLink
hi! link helpCommand MiodaIbukiLightPurple
hi! link helpExample MiodaIbukiLightGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
