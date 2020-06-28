" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'yuri-light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:yuri-light#palette.fg

let s:bglighter = g:yuri-light#palette.bglighter
let s:bglight   = g:yuri-light#palette.bglight
let s:bg        = g:yuri-light#palette.bg
let s:bgdark    = g:yuri-light#palette.bgdark
let s:bgdarker  = g:yuri-light#palette.bgdarker

let s:comment   = g:yuri-light#palette.comment
let s:selection = g:yuri-light#palette.selection
let s:subtle    = g:yuri-light#palette.subtle

let s:cyan      = g:yuri-light#palette.cyan
let s:green     = g:yuri-light#palette.green
let s:orange    = g:yuri-light#palette.orange
let s:pink      = g:yuri-light#palette.pink
let s:purple    = g:yuri-light#palette.purple
let s:red       = g:yuri-light#palette.red
let s:yellow    = g:yuri-light#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:yuri-light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:yuri-light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:yuri-light_bold')
  let g:yuri-light_bold = 1
endif

if !exists('g:yuri-light_italic')
  let g:yuri-light_italic = 1
endif

if !exists('g:yuri-light_underline')
  let g:yuri-light_underline = 1
endif

if !exists('g:yuri-light_undercurl') && g:yuri-light_underline != 0
  let g:yuri-light_undercurl = 1
endif

if !exists('g:yuri-light_inverse')
  let g:yuri-light_inverse = 1
endif

if !exists('g:yuri-light_colorterm')
  let g:yuri-light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:yuri-light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:yuri-light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:yuri-light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:yuri-light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:yuri-light_inverse == 1 ? 'inverse' : 0,
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

call s:h('YuriLightBgLight', s:none, s:bglight)
call s:h('YuriLightBgLighter', s:none, s:bglighter)
call s:h('YuriLightBgDark', s:none, s:bgdark)
call s:h('YuriLightBgDarker', s:none, s:bgdarker)

call s:h('YuriLightFg', s:fg)
call s:h('YuriLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('YuriLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('YuriLightComment', s:comment)
call s:h('YuriLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('YuriLightSelection', s:none, s:selection)

call s:h('YuriLightSubtle', s:subtle)

call s:h('YuriLightCyan', s:cyan)
call s:h('YuriLightCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('YuriLightGreen', s:green)
call s:h('YuriLightGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('YuriLightGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('YuriLightGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('YuriLightOrange', s:orange)
call s:h('YuriLightOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('YuriLightOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('YuriLightOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('YuriLightOrangeInverse', s:bg, s:orange)

call s:h('YuriLightPink', s:pink)
call s:h('YuriLightPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('YuriLightPurple', s:purple)
call s:h('YuriLightPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('YuriLightPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('YuriLightRed', s:red)
call s:h('YuriLightRedInverse', s:fg, s:red)

call s:h('YuriLightYellow', s:yellow)
call s:h('YuriLightYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('YuriLightError', s:red, s:none, [], s:red)

call s:h('YuriLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('YuriLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('YuriLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('YuriLightTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('YuriLightSearch', s:green, s:none, [s:attrs.inverse])
call s:h('YuriLightBoundary', s:comment, s:bgdark)
call s:h('YuriLightLink', s:cyan, s:none, [s:attrs.underline])

call s:h('YuriLightDiffChange', s:orange, s:none)
call s:h('YuriLightDiffText', s:bg, s:orange)
call s:h('YuriLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:yuri-light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  YuriLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr YuriLightYellow
hi! link DiffAdd      YuriLightGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   YuriLightDiffChange
hi! link DiffDelete   YuriLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     YuriLightDiffText
hi! link Directory    YuriLightPurpleBold
hi! link ErrorMsg     YuriLightRedInverse
hi! link FoldColumn   YuriLightSubtle
hi! link Folded       YuriLightBoundary
hi! link IncSearch    YuriLightOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      YuriLightFgBold
hi! link NonText      YuriLightSubtle
hi! link Pmenu        YuriLightBgDark
hi! link PmenuSbar    YuriLightBgDark
hi! link PmenuSel     YuriLightSelection
hi! link PmenuThumb   YuriLightSelection
hi! link Question     YuriLightFgBold
hi! link Search       YuriLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      YuriLightBoundary
hi! link TabLineFill  YuriLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        YuriLightGreenBold
hi! link VertSplit    YuriLightBoundary
hi! link Visual       YuriLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   YuriLightOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey YuriLightRed
  hi! link LspDiagnosticsUnderline YuriLightFgUnderline
  hi! link LspDiagnosticsInformation YuriLightCyan
  hi! link LspDiagnosticsHint YuriLightCyan
  hi! link LspDiagnosticsError YuriLightError
  hi! link LspDiagnosticsWarning YuriLightOrange
  hi! link LspDiagnosticsUnderlineError YuriLightErrorLine
  hi! link LspDiagnosticsUnderlineHint YuriLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation YuriLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning YuriLightWarnLine
else
  hi! link SpecialKey YuriLightSubtle
endif

hi! link Comment YuriLightComment
hi! link Underlined YuriLightFgUnderline
hi! link Todo YuriLightTodo

hi! link Error YuriLightError
hi! link SpellBad YuriLightErrorLine
hi! link SpellLocal YuriLightWarnLine
hi! link SpellCap YuriLightInfoLine
hi! link SpellRare YuriLightInfoLine

hi! link Constant YuriLightPurple
hi! link String YuriLightYellow
hi! link Character YuriLightPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier YuriLightFg
hi! link Function YuriLightGreen

hi! link Statement YuriLightPink
hi! link Conditional YuriLightPink
hi! link Repeat YuriLightPink
hi! link Label YuriLightPink
hi! link Operator YuriLightPink
hi! link Keyword YuriLightPink
hi! link Exception YuriLightPink

hi! link PreProc YuriLightPink
hi! link Include YuriLightPink
hi! link Define YuriLightPink
hi! link Macro YuriLightPink
hi! link PreCondit YuriLightPink
hi! link StorageClass YuriLightPink
hi! link Structure YuriLightPink
hi! link Typedef YuriLightPink

hi! link Type YuriLightCyanItalic

hi! link Delimiter YuriLightFg

hi! link Special YuriLightPink
hi! link SpecialComment YuriLightCyanItalic
hi! link Tag YuriLightCyan
hi! link helpHyperTextJump YuriLightLink
hi! link helpCommand YuriLightPurple
hi! link helpExample YuriLightGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
