" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rias'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rias#palette.fg

let s:bglighter = g:rias#palette.bglighter
let s:bglight   = g:rias#palette.bglight
let s:bg        = g:rias#palette.bg
let s:bgdark    = g:rias#palette.bgdark
let s:bgdarker  = g:rias#palette.bgdarker

let s:comment   = g:rias#palette.comment
let s:selection = g:rias#palette.selection
let s:subtle    = g:rias#palette.subtle

let s:cyan      = g:rias#palette.cyan
let s:green     = g:rias#palette.green
let s:orange    = g:rias#palette.orange
let s:pink      = g:rias#palette.pink
let s:purple    = g:rias#palette.purple
let s:red       = g:rias#palette.red
let s:yellow    = g:rias#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rias#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rias#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rias_bold')
  let g:rias_bold = 1
endif

if !exists('g:rias_italic')
  let g:rias_italic = 1
endif

if !exists('g:rias_underline')
  let g:rias_underline = 1
endif

if !exists('g:rias_undercurl') && g:rias_underline != 0
  let g:rias_undercurl = 1
endif

if !exists('g:rias_inverse')
  let g:rias_inverse = 1
endif

if !exists('g:rias_colorterm')
  let g:rias_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = 
      \ 'bold': g:rias_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rias_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rias_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rias_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rias_inverse == 1 ? 'inverse' : 0,
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

call s:h('DraculaBgLight', s:none, s:bglight)
call s:h('DraculaBgLighter', s:none, s:bglighter)
call s:h('DraculaBgDark', s:none, s:bgdark)
call s:h('DraculaBgDarker', s:none, s:bgdarker)

call s:h('DraculaFg', s:fg)
call s:h('DraculaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DraculaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DraculaComment', s:comment)
call s:h('DraculaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DraculaSelection', s:none, s:selection)

call s:h('DraculaSubtle', s:subtle)

call s:h('DraculaCyan', s:cyan)
call s:h('DraculaCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('DraculaGreen', s:green)
call s:h('DraculaGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('DraculaGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('DraculaGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DraculaOrange', s:orange)
call s:h('DraculaOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('DraculaOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('DraculaOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DraculaOrangeInverse', s:bg, s:orange)

call s:h('DraculaPink', s:pink)
call s:h('DraculaPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('DraculaPurple', s:purple)
call s:h('DraculaPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('DraculaPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('DraculaRed', s:red)
call s:h('DraculaRedInverse', s:fg, s:red)

call s:h('DraculaYellow', s:yellow)
call s:h('DraculaYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('DraculaError', s:red, s:none, [], s:red)

call s:h('DraculaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DraculaWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('DraculaInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('DraculaTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DraculaSearch', s:green, s:none, [s:attrs.inverse])
call s:h('DraculaBoundary', s:comment, s:bgdark)
call s:h('DraculaLink', s:cyan, s:none, [s:attrs.underline])

call s:h('DraculaDiffChange', s:orange, s:none)
call s:h('DraculaDiffText', s:bg, s:orange)
call s:h('DraculaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:rias_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  DraculaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DraculaYellow
hi! link DiffAdd      DraculaGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DraculaDiffChange
hi! link DiffDelete   DraculaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DraculaDiffText
hi! link Directory    DraculaPurpleBold
hi! link ErrorMsg     DraculaRedInverse
hi! link FoldColumn   DraculaSubtle
hi! link Folded       DraculaBoundary
hi! link IncSearch    DraculaOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DraculaFgBold
hi! link NonText      DraculaSubtle
hi! link Pmenu        DraculaBgDark
hi! link PmenuSbar    DraculaBgDark
hi! link PmenuSel     DraculaSelection
hi! link PmenuThumb   DraculaSelection
hi! link Question     DraculaFgBold
hi! link Search       DraculaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DraculaBoundary
hi! link TabLineFill  DraculaBgDarker
hi! link TabLineSel   Normal
hi! link Title        DraculaGreenBold
hi! link VertSplit    DraculaBoundary
hi! link Visual       DraculaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DraculaOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DraculaRed
  hi! link LspDiagnosticsUnderline DraculaFgUnderline
  hi! link LspDiagnosticsInformation DraculaCyan
  hi! link LspDiagnosticsHint DraculaCyan
  hi! link LspDiagnosticsError DraculaError
  hi! link LspDiagnosticsWarning DraculaOrange
  hi! link LspDiagnosticsUnderlineError DraculaErrorLine
  hi! link LspDiagnosticsUnderlineHint DraculaInfoLine
  hi! link LspDiagnosticsUnderlineInformation DraculaInfoLine
  hi! link LspDiagnosticsUnderlineWarning DraculaWarnLine
else
  hi! link SpecialKey DraculaSubtle
endif

hi! link Comment DraculaComment
hi! link Underlined DraculaFgUnderline
hi! link Todo DraculaTodo

hi! link Error DraculaError
hi! link SpellBad DraculaErrorLine
hi! link SpellLocal DraculaWarnLine
hi! link SpellCap DraculaInfoLine
hi! link SpellRare DraculaInfoLine

hi! link Constant DraculaPurple
hi! link String DraculaYellow
hi! link Character DraculaPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DraculaFg
hi! link Function DraculaGreen

hi! link Statement DraculaPink
hi! link Conditional DraculaPink
hi! link Repeat DraculaPink
hi! link Label DraculaPink
hi! link Operator DraculaPink
hi! link Keyword DraculaPink
hi! link Exception DraculaPink

hi! link PreProc DraculaPink
hi! link Include DraculaPink
hi! link Define DraculaPink
hi! link Macro DraculaPink
hi! link PreCondit DraculaPink
hi! link StorageClass DraculaPink
hi! link Structure DraculaPink
hi! link Typedef DraculaPink

hi! link Type DraculaCyanItalic

hi! link Delimiter DraculaFg

hi! link Special DraculaPink
hi! link SpecialComment DraculaCyanItalic
hi! link Tag DraculaCyan
hi! link helpHyperTextJump DraculaLink
hi! link helpCommand DraculaPurple
hi! link helpExample DraculaGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
