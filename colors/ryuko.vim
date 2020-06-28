" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ryuko'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ryuko#palette.fg

let s:bglighter = g:ryuko#palette.bglighter
let s:bglight   = g:ryuko#palette.bglight
let s:bg        = g:ryuko#palette.bg
let s:bgdark    = g:ryuko#palette.bgdark
let s:bgdarker  = g:ryuko#palette.bgdarker

let s:comment   = g:ryuko#palette.comment
let s:selection = g:ryuko#palette.selection
let s:subtle    = g:ryuko#palette.subtle

let s:cyan      = g:ryuko#palette.cyan
let s:green     = g:ryuko#palette.green
let s:orange    = g:ryuko#palette.orange
let s:pink      = g:ryuko#palette.pink
let s:purple    = g:ryuko#palette.purple
let s:red       = g:ryuko#palette.red
let s:yellow    = g:ryuko#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ryuko#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ryuko#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ryuko_bold')
  let g:ryuko_bold = 1
endif

if !exists('g:ryuko_italic')
  let g:ryuko_italic = 1
endif

if !exists('g:ryuko_underline')
  let g:ryuko_underline = 1
endif

if !exists('g:ryuko_undercurl') && g:ryuko_underline != 0
  let g:ryuko_undercurl = 1
endif

if !exists('g:ryuko_inverse')
  let g:ryuko_inverse = 1
endif

if !exists('g:ryuko_colorterm')
  let g:ryuko_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ryuko_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ryuko_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ryuko_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ryuko_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ryuko_inverse == 1 ? 'inverse' : 0,
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

call s:h('RyukoBgLight', s:none, s:bglight)
call s:h('RyukoBgLighter', s:none, s:bglighter)
call s:h('RyukoBgDark', s:none, s:bgdark)
call s:h('RyukoBgDarker', s:none, s:bgdarker)

call s:h('RyukoFg', s:fg)
call s:h('RyukoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RyukoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RyukoComment', s:comment)
call s:h('RyukoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RyukoSelection', s:none, s:selection)

call s:h('RyukoSubtle', s:subtle)

call s:h('RyukoCyan', s:cyan)
call s:h('RyukoCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('RyukoGreen', s:green)
call s:h('RyukoGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('RyukoGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('RyukoGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RyukoOrange', s:orange)
call s:h('RyukoOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('RyukoOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('RyukoOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RyukoOrangeInverse', s:bg, s:orange)

call s:h('RyukoPink', s:pink)
call s:h('RyukoPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('RyukoPurple', s:purple)
call s:h('RyukoPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('RyukoPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('RyukoRed', s:red)
call s:h('RyukoRedInverse', s:fg, s:red)

call s:h('RyukoYellow', s:yellow)
call s:h('RyukoYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('RyukoError', s:red, s:none, [], s:red)

call s:h('RyukoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RyukoWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('RyukoInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('RyukoTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RyukoSearch', s:green, s:none, [s:attrs.inverse])
call s:h('RyukoBoundary', s:comment, s:bgdark)
call s:h('RyukoLink', s:cyan, s:none, [s:attrs.underline])

call s:h('RyukoDiffChange', s:orange, s:none)
call s:h('RyukoDiffText', s:bg, s:orange)
call s:h('RyukoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:ryuko_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  RyukoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RyukoYellow
hi! link DiffAdd      RyukoGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RyukoDiffChange
hi! link DiffDelete   RyukoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RyukoDiffText
hi! link Directory    RyukoPurpleBold
hi! link ErrorMsg     RyukoRedInverse
hi! link FoldColumn   RyukoSubtle
hi! link Folded       RyukoBoundary
hi! link IncSearch    RyukoOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RyukoFgBold
hi! link NonText      RyukoSubtle
hi! link Pmenu        RyukoBgDark
hi! link PmenuSbar    RyukoBgDark
hi! link PmenuSel     RyukoSelection
hi! link PmenuThumb   RyukoSelection
hi! link Question     RyukoFgBold
hi! link Search       RyukoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RyukoBoundary
hi! link TabLineFill  RyukoBgDarker
hi! link TabLineSel   Normal
hi! link Title        RyukoGreenBold
hi! link VertSplit    RyukoBoundary
hi! link Visual       RyukoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RyukoOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RyukoRed
  hi! link LspDiagnosticsUnderline RyukoFgUnderline
  hi! link LspDiagnosticsInformation RyukoCyan
  hi! link LspDiagnosticsHint RyukoCyan
  hi! link LspDiagnosticsError RyukoError
  hi! link LspDiagnosticsWarning RyukoOrange
  hi! link LspDiagnosticsUnderlineError RyukoErrorLine
  hi! link LspDiagnosticsUnderlineHint RyukoInfoLine
  hi! link LspDiagnosticsUnderlineInformation RyukoInfoLine
  hi! link LspDiagnosticsUnderlineWarning RyukoWarnLine
else
  hi! link SpecialKey RyukoSubtle
endif

hi! link Comment RyukoComment
hi! link Underlined RyukoFgUnderline
hi! link Todo RyukoTodo

hi! link Error RyukoError
hi! link SpellBad RyukoErrorLine
hi! link SpellLocal RyukoWarnLine
hi! link SpellCap RyukoInfoLine
hi! link SpellRare RyukoInfoLine

hi! link Constant RyukoPurple
hi! link String RyukoYellow
hi! link Character RyukoPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RyukoFg
hi! link Function RyukoGreen

hi! link Statement RyukoPink
hi! link Conditional RyukoPink
hi! link Repeat RyukoPink
hi! link Label RyukoPink
hi! link Operator RyukoPink
hi! link Keyword RyukoPink
hi! link Exception RyukoPink

hi! link PreProc RyukoPink
hi! link Include RyukoPink
hi! link Define RyukoPink
hi! link Macro RyukoPink
hi! link PreCondit RyukoPink
hi! link StorageClass RyukoPink
hi! link Structure RyukoPink
hi! link Typedef RyukoPink

hi! link Type RyukoCyanItalic

hi! link Delimiter RyukoFg

hi! link Special RyukoPink
hi! link SpecialComment RyukoCyanItalic
hi! link Tag RyukoCyan
hi! link helpHyperTextJump RyukoLink
hi! link helpCommand RyukoPurple
hi! link helpExample RyukoGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
