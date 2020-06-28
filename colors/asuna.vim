" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'asuna'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:asuna#palette.fg

let s:bglighter = g:asuna#palette.bglighter
let s:bglight   = g:asuna#palette.bglight
let s:bg        = g:asuna#palette.bg
let s:bgdark    = g:asuna#palette.bgdark
let s:bgdarker  = g:asuna#palette.bgdarker

let s:comment   = g:asuna#palette.comment
let s:selection = g:asuna#palette.selection
let s:subtle    = g:asuna#palette.subtle

let s:cyan      = g:asuna#palette.cyan
let s:green     = g:asuna#palette.green
let s:orange    = g:asuna#palette.orange
let s:pink      = g:asuna#palette.pink
let s:purple    = g:asuna#palette.purple
let s:red       = g:asuna#palette.red
let s:string_color    = g:asuna#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:asuna#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:asuna#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:asuna_bold')
  let g:asuna_bold = 1
endif

if !exists('g:asuna_italic')
  let g:asuna_italic = 1
endif

if !exists('g:asuna_underline')
  let g:asuna_underline = 1
endif

if !exists('g:asuna_undercurl') && g:asuna_underline != 0
  let g:asuna_undercurl = 1
endif

if !exists('g:asuna_inverse')
  let g:asuna_inverse = 1
endif

if !exists('g:asuna_colorterm')
  let g:asuna_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:asuna_bold == 1 ? 'bold' : 0,
      \ 'italic': g:asuna_italic == 1 ? 'italic' : 0,
      \ 'underline': g:asuna_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:asuna_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:asuna_inverse == 1 ? 'inverse' : 0,
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

call s:h('AsunaBgLight', s:none, s:bglight)
call s:h('AsunaBgLighter', s:none, s:bglighter)
call s:h('AsunaBgDark', s:none, s:bgdark)
call s:h('AsunaBgDarker', s:none, s:bgdarker)

call s:h('AsunaFg', s:fg)
call s:h('AsunaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AsunaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AsunaComment', s:comment)
call s:h('AsunaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AsunaSelection', s:none, s:selection)

call s:h('AsunaSubtle', s:subtle)

call s:h('AsunaCyan', s:cyan)
call s:h('AsunaCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('AsunaGreen', s:green)
call s:h('AsunaGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('AsunaGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('AsunaGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AsunaOrange', s:orange)
call s:h('AsunaOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('AsunaOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('AsunaOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AsunaOrangeInverse', s:bg, s:orange)

call s:h('AsunaPink', s:pink)
call s:h('AsunaPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('AsunaPurple', s:purple)
call s:h('AsunaPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('AsunaPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('AsunaRed', s:red)
call s:h('AsunaRedInverse', s:fg, s:red)

call s:h('AsunaStringColor', s:string_color)
call s:h('AsunaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AsunaError', s:red, s:none, [], s:red)

call s:h('AsunaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AsunaWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('AsunaInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('AsunaTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AsunaSearch', s:green, s:none, [s:attrs.inverse])
call s:h('AsunaBoundary', s:comment, s:bgdark)
call s:h('AsunaLink', s:cyan, s:none, [s:attrs.underline])

call s:h('AsunaDiffChange', s:orange, s:none)
call s:h('AsunaDiffText', s:bg, s:orange)
call s:h('AsunaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:asuna_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AsunaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AsunaStringColor
hi! link DiffAdd      AsunaGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AsunaDiffChange
hi! link DiffDelete   AsunaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AsunaDiffText
hi! link Directory    AsunaPurpleBold
hi! link ErrorMsg     AsunaRedInverse
hi! link FoldColumn   AsunaSubtle
hi! link Folded       AsunaBoundary
hi! link IncSearch    AsunaOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AsunaFgBold
hi! link NonText      AsunaSubtle
" hi! link Pmenu        AsunaBgDark
" hi! link PmenuSbar    AsunaBgDark
hi! link PmenuSel     AsunaSelection
hi! link PmenuThumb   AsunaSelection
hi! link Question     AsunaFgBold
hi! link Search       AsunaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AsunaBoundary
" hi! link TabLineFill  AsunaBgDarker
hi! link TabLineSel   Normal
hi! link Title        AsunaGreenBold
hi! link VertSplit    AsunaBoundary
hi! link Visual       AsunaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AsunaOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AsunaRed
  hi! link LspDiagnosticsUnderline AsunaFgUnderline
  hi! link LspDiagnosticsInformation AsunaCyan
  hi! link LspDiagnosticsHint AsunaCyan
  hi! link LspDiagnosticsError AsunaError
  hi! link LspDiagnosticsWarning AsunaOrange
  hi! link LspDiagnosticsUnderlineError AsunaErrorLine
  hi! link LspDiagnosticsUnderlineHint AsunaInfoLine
  hi! link LspDiagnosticsUnderlineInformation AsunaInfoLine
  hi! link LspDiagnosticsUnderlineWarning AsunaWarnLine
else
  hi! link SpecialKey AsunaSubtle
endif

hi! link Comment AsunaComment
hi! link Underlined AsunaFgUnderline
hi! link Todo AsunaTodo

hi! link Error AsunaError
hi! link SpellBad AsunaErrorLine
hi! link SpellLocal AsunaWarnLine
hi! link SpellCap AsunaInfoLine
hi! link SpellRare AsunaInfoLine

hi! link Constant AsunaPurple
hi! link String AsunaStringColor
hi! link Character AsunaPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AsunaFg
hi! link Function AsunaGreen

hi! link Statement AsunaPink
hi! link Conditional AsunaPink
hi! link Repeat AsunaPink
hi! link Label AsunaPink
hi! link Operator AsunaPink
hi! link Keyword AsunaPink
hi! link Exception AsunaPink

hi! link PreProc AsunaPink
hi! link Include AsunaPink
hi! link Define AsunaPink
hi! link Macro AsunaPink
hi! link PreCondit AsunaPink
hi! link StorageClass AsunaPink
hi! link Structure AsunaPink
hi! link Typedef AsunaPink

hi! link Type AsunaCyanItalic

hi! link Delimiter AsunaFg

hi! link Special AsunaPink
hi! link SpecialComment AsunaCyanItalic
hi! link Tag AsunaCyan
hi! link helpHyperTextJump AsunaLink
hi! link helpCommand AsunaPurple
hi! link helpExample AsunaGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
