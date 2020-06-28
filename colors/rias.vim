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
let s:string_color    = g:rias#palette.string_color

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

let s:attrs = {
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

call s:h('RiasBgLight', s:none, s:bglight)
call s:h('RiasBgLighter', s:none, s:bglighter)
call s:h('RiasBgDark', s:none, s:bgdark)
call s:h('RiasBgDarker', s:none, s:bgdarker)

call s:h('RiasFg', s:fg)
call s:h('RiasFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RiasFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RiasComment', s:comment)
call s:h('RiasCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RiasSelection', s:none, s:selection)

call s:h('RiasSubtle', s:subtle)

call s:h('RiasCyan', s:cyan)
call s:h('RiasCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('RiasGreen', s:green)
call s:h('RiasGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('RiasGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('RiasGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RiasOrange', s:orange)
call s:h('RiasOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('RiasOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('RiasOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RiasOrangeInverse', s:bg, s:orange)

call s:h('RiasPink', s:pink)
call s:h('RiasPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('RiasPurple', s:purple)
call s:h('RiasPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('RiasPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('RiasRed', s:red)
call s:h('RiasRedInverse', s:fg, s:red)

call s:h('RiasStringColor', s:string_color)
call s:h('RiasStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RiasError', s:red, s:none, [], s:red)

call s:h('RiasErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RiasWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('RiasInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('RiasTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RiasSearch', s:green, s:none, [s:attrs.inverse])
call s:h('RiasBoundary', s:comment, s:bgdark)
call s:h('RiasLink', s:cyan, s:none, [s:attrs.underline])

call s:h('RiasDiffChange', s:orange, s:none)
call s:h('RiasDiffText', s:bg, s:orange)
call s:h('RiasDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rias_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RiasBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RiasStringColor
hi! link DiffAdd      RiasGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RiasDiffChange
hi! link DiffDelete   RiasDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RiasDiffText
hi! link Directory    RiasPurpleBold
hi! link ErrorMsg     RiasRedInverse
hi! link FoldColumn   RiasSubtle
hi! link Folded       RiasBoundary
hi! link IncSearch    RiasOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RiasFgBold
hi! link NonText      RiasSubtle
" hi! link Pmenu        RiasBgDark
" hi! link PmenuSbar    RiasBgDark
hi! link PmenuSel     RiasSelection
hi! link PmenuThumb   RiasSelection
hi! link Question     RiasFgBold
hi! link Search       RiasSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RiasBoundary
" hi! link TabLineFill  RiasBgDarker
hi! link TabLineSel   Normal
hi! link Title        RiasGreenBold
hi! link VertSplit    RiasBoundary
hi! link Visual       RiasSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RiasOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RiasRed
  hi! link LspDiagnosticsUnderline RiasFgUnderline
  hi! link LspDiagnosticsInformation RiasCyan
  hi! link LspDiagnosticsHint RiasCyan
  hi! link LspDiagnosticsError RiasError
  hi! link LspDiagnosticsWarning RiasOrange
  hi! link LspDiagnosticsUnderlineError RiasErrorLine
  hi! link LspDiagnosticsUnderlineHint RiasInfoLine
  hi! link LspDiagnosticsUnderlineInformation RiasInfoLine
  hi! link LspDiagnosticsUnderlineWarning RiasWarnLine
else
  hi! link SpecialKey RiasSubtle
endif

hi! link Comment RiasComment
hi! link Underlined RiasFgUnderline
hi! link Todo RiasTodo

hi! link Error RiasError
hi! link SpellBad RiasErrorLine
hi! link SpellLocal RiasWarnLine
hi! link SpellCap RiasInfoLine
hi! link SpellRare RiasInfoLine

hi! link Constant RiasPurple
hi! link String RiasStringColor
hi! link Character RiasPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RiasFg
hi! link Function RiasGreen

hi! link Statement RiasPink
hi! link Conditional RiasPink
hi! link Repeat RiasPink
hi! link Label RiasPink
hi! link Operator RiasPink
hi! link Keyword RiasPink
hi! link Exception RiasPink

hi! link PreProc RiasPink
hi! link Include RiasPink
hi! link Define RiasPink
hi! link Macro RiasPink
hi! link PreCondit RiasPink
hi! link StorageClass RiasPink
hi! link Structure RiasPink
hi! link Typedef RiasPink

hi! link Type RiasCyanItalic

hi! link Delimiter RiasFg

hi! link Special RiasPink
hi! link SpecialComment RiasCyanItalic
hi! link Tag RiasCyan
hi! link helpHyperTextJump RiasLink
hi! link helpCommand RiasPurple
hi! link helpExample RiasGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
