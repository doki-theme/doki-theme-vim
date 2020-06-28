" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'darkness-light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:darkness-light#palette.fg

let s:bglighter = g:darkness-light#palette.bglighter
let s:bglight   = g:darkness-light#palette.bglight
let s:bg        = g:darkness-light#palette.bg
let s:bgdark    = g:darkness-light#palette.bgdark
let s:bgdarker  = g:darkness-light#palette.bgdarker

let s:comment   = g:darkness-light#palette.comment
let s:selection = g:darkness-light#palette.selection
let s:subtle    = g:darkness-light#palette.subtle

let s:cyan      = g:darkness-light#palette.cyan
let s:green     = g:darkness-light#palette.green
let s:orange    = g:darkness-light#palette.orange
let s:pink      = g:darkness-light#palette.pink
let s:purple    = g:darkness-light#palette.purple
let s:red       = g:darkness-light#palette.red
let s:yellow    = g:darkness-light#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:darkness-light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:darkness-light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:darkness-light_bold')
  let g:darkness-light_bold = 1
endif

if !exists('g:darkness-light_italic')
  let g:darkness-light_italic = 1
endif

if !exists('g:darkness-light_underline')
  let g:darkness-light_underline = 1
endif

if !exists('g:darkness-light_undercurl') && g:darkness-light_underline != 0
  let g:darkness-light_undercurl = 1
endif

if !exists('g:darkness-light_inverse')
  let g:darkness-light_inverse = 1
endif

if !exists('g:darkness-light_colorterm')
  let g:darkness-light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:darkness-light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:darkness-light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:darkness-light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:darkness-light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:darkness-light_inverse == 1 ? 'inverse' : 0,
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

call s:h('DarknessLightBgLight', s:none, s:bglight)
call s:h('DarknessLightBgLighter', s:none, s:bglighter)
call s:h('DarknessLightBgDark', s:none, s:bgdark)
call s:h('DarknessLightBgDarker', s:none, s:bgdarker)

call s:h('DarknessLightFg', s:fg)
call s:h('DarknessLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DarknessLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DarknessLightComment', s:comment)
call s:h('DarknessLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DarknessLightSelection', s:none, s:selection)

call s:h('DarknessLightSubtle', s:subtle)

call s:h('DarknessLightCyan', s:cyan)
call s:h('DarknessLightCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('DarknessLightGreen', s:green)
call s:h('DarknessLightGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('DarknessLightGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('DarknessLightGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DarknessLightOrange', s:orange)
call s:h('DarknessLightOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('DarknessLightOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('DarknessLightOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DarknessLightOrangeInverse', s:bg, s:orange)

call s:h('DarknessLightPink', s:pink)
call s:h('DarknessLightPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('DarknessLightPurple', s:purple)
call s:h('DarknessLightPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('DarknessLightPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('DarknessLightRed', s:red)
call s:h('DarknessLightRedInverse', s:fg, s:red)

call s:h('DarknessLightYellow', s:yellow)
call s:h('DarknessLightYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('DarknessLightError', s:red, s:none, [], s:red)

call s:h('DarknessLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DarknessLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('DarknessLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('DarknessLightTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DarknessLightSearch', s:green, s:none, [s:attrs.inverse])
call s:h('DarknessLightBoundary', s:comment, s:bgdark)
call s:h('DarknessLightLink', s:cyan, s:none, [s:attrs.underline])

call s:h('DarknessLightDiffChange', s:orange, s:none)
call s:h('DarknessLightDiffText', s:bg, s:orange)
call s:h('DarknessLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:darkness-light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  DarknessLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DarknessLightYellow
hi! link DiffAdd      DarknessLightGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DarknessLightDiffChange
hi! link DiffDelete   DarknessLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DarknessLightDiffText
hi! link Directory    DarknessLightPurpleBold
hi! link ErrorMsg     DarknessLightRedInverse
hi! link FoldColumn   DarknessLightSubtle
hi! link Folded       DarknessLightBoundary
hi! link IncSearch    DarknessLightOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DarknessLightFgBold
hi! link NonText      DarknessLightSubtle
hi! link Pmenu        DarknessLightBgDark
hi! link PmenuSbar    DarknessLightBgDark
hi! link PmenuSel     DarknessLightSelection
hi! link PmenuThumb   DarknessLightSelection
hi! link Question     DarknessLightFgBold
hi! link Search       DarknessLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DarknessLightBoundary
hi! link TabLineFill  DarknessLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        DarknessLightGreenBold
hi! link VertSplit    DarknessLightBoundary
hi! link Visual       DarknessLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DarknessLightOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DarknessLightRed
  hi! link LspDiagnosticsUnderline DarknessLightFgUnderline
  hi! link LspDiagnosticsInformation DarknessLightCyan
  hi! link LspDiagnosticsHint DarknessLightCyan
  hi! link LspDiagnosticsError DarknessLightError
  hi! link LspDiagnosticsWarning DarknessLightOrange
  hi! link LspDiagnosticsUnderlineError DarknessLightErrorLine
  hi! link LspDiagnosticsUnderlineHint DarknessLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation DarknessLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning DarknessLightWarnLine
else
  hi! link SpecialKey DarknessLightSubtle
endif

hi! link Comment DarknessLightComment
hi! link Underlined DarknessLightFgUnderline
hi! link Todo DarknessLightTodo

hi! link Error DarknessLightError
hi! link SpellBad DarknessLightErrorLine
hi! link SpellLocal DarknessLightWarnLine
hi! link SpellCap DarknessLightInfoLine
hi! link SpellRare DarknessLightInfoLine

hi! link Constant DarknessLightPurple
hi! link String DarknessLightYellow
hi! link Character DarknessLightPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DarknessLightFg
hi! link Function DarknessLightGreen

hi! link Statement DarknessLightPink
hi! link Conditional DarknessLightPink
hi! link Repeat DarknessLightPink
hi! link Label DarknessLightPink
hi! link Operator DarknessLightPink
hi! link Keyword DarknessLightPink
hi! link Exception DarknessLightPink

hi! link PreProc DarknessLightPink
hi! link Include DarknessLightPink
hi! link Define DarknessLightPink
hi! link Macro DarknessLightPink
hi! link PreCondit DarknessLightPink
hi! link StorageClass DarknessLightPink
hi! link Structure DarknessLightPink
hi! link Typedef DarknessLightPink

hi! link Type DarknessLightCyanItalic

hi! link Delimiter DarknessLightFg

hi! link Special DarknessLightPink
hi! link SpecialComment DarknessLightCyanItalic
hi! link Tag DarknessLightCyan
hi! link helpHyperTextJump DarknessLightLink
hi! link helpCommand DarknessLightPurple
hi! link helpExample DarknessLightGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
