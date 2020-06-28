" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'sayori-dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:sayori-dark#palette.fg

let s:bglighter = g:sayori-dark#palette.bglighter
let s:bglight   = g:sayori-dark#palette.bglight
let s:bg        = g:sayori-dark#palette.bg
let s:bgdark    = g:sayori-dark#palette.bgdark
let s:bgdarker  = g:sayori-dark#palette.bgdarker

let s:comment   = g:sayori-dark#palette.comment
let s:selection = g:sayori-dark#palette.selection
let s:subtle    = g:sayori-dark#palette.subtle

let s:cyan      = g:sayori-dark#palette.cyan
let s:green     = g:sayori-dark#palette.green
let s:orange    = g:sayori-dark#palette.orange
let s:pink      = g:sayori-dark#palette.pink
let s:purple    = g:sayori-dark#palette.purple
let s:red       = g:sayori-dark#palette.red
let s:yellow    = g:sayori-dark#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:sayori-dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:sayori-dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:sayori-dark_bold')
  let g:sayori-dark_bold = 1
endif

if !exists('g:sayori-dark_italic')
  let g:sayori-dark_italic = 1
endif

if !exists('g:sayori-dark_underline')
  let g:sayori-dark_underline = 1
endif

if !exists('g:sayori-dark_undercurl') && g:sayori-dark_underline != 0
  let g:sayori-dark_undercurl = 1
endif

if !exists('g:sayori-dark_inverse')
  let g:sayori-dark_inverse = 1
endif

if !exists('g:sayori-dark_colorterm')
  let g:sayori-dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:sayori-dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:sayori-dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:sayori-dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:sayori-dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:sayori-dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('SayoriDarkBgLight', s:none, s:bglight)
call s:h('SayoriDarkBgLighter', s:none, s:bglighter)
call s:h('SayoriDarkBgDark', s:none, s:bgdark)
call s:h('SayoriDarkBgDarker', s:none, s:bgdarker)

call s:h('SayoriDarkFg', s:fg)
call s:h('SayoriDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SayoriDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SayoriDarkComment', s:comment)
call s:h('SayoriDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SayoriDarkSelection', s:none, s:selection)

call s:h('SayoriDarkSubtle', s:subtle)

call s:h('SayoriDarkCyan', s:cyan)
call s:h('SayoriDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('SayoriDarkGreen', s:green)
call s:h('SayoriDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('SayoriDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('SayoriDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SayoriDarkOrange', s:orange)
call s:h('SayoriDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('SayoriDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('SayoriDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SayoriDarkOrangeInverse', s:bg, s:orange)

call s:h('SayoriDarkPink', s:pink)
call s:h('SayoriDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('SayoriDarkPurple', s:purple)
call s:h('SayoriDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('SayoriDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('SayoriDarkRed', s:red)
call s:h('SayoriDarkRedInverse', s:fg, s:red)

call s:h('SayoriDarkYellow', s:yellow)
call s:h('SayoriDarkYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('SayoriDarkError', s:red, s:none, [], s:red)

call s:h('SayoriDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SayoriDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('SayoriDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('SayoriDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SayoriDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('SayoriDarkBoundary', s:comment, s:bgdark)
call s:h('SayoriDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('SayoriDarkDiffChange', s:orange, s:none)
call s:h('SayoriDarkDiffText', s:bg, s:orange)
call s:h('SayoriDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:sayori-dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  SayoriDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SayoriDarkYellow
hi! link DiffAdd      SayoriDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SayoriDarkDiffChange
hi! link DiffDelete   SayoriDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SayoriDarkDiffText
hi! link Directory    SayoriDarkPurpleBold
hi! link ErrorMsg     SayoriDarkRedInverse
hi! link FoldColumn   SayoriDarkSubtle
hi! link Folded       SayoriDarkBoundary
hi! link IncSearch    SayoriDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SayoriDarkFgBold
hi! link NonText      SayoriDarkSubtle
hi! link Pmenu        SayoriDarkBgDark
hi! link PmenuSbar    SayoriDarkBgDark
hi! link PmenuSel     SayoriDarkSelection
hi! link PmenuThumb   SayoriDarkSelection
hi! link Question     SayoriDarkFgBold
hi! link Search       SayoriDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SayoriDarkBoundary
hi! link TabLineFill  SayoriDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        SayoriDarkGreenBold
hi! link VertSplit    SayoriDarkBoundary
hi! link Visual       SayoriDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SayoriDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SayoriDarkRed
  hi! link LspDiagnosticsUnderline SayoriDarkFgUnderline
  hi! link LspDiagnosticsInformation SayoriDarkCyan
  hi! link LspDiagnosticsHint SayoriDarkCyan
  hi! link LspDiagnosticsError SayoriDarkError
  hi! link LspDiagnosticsWarning SayoriDarkOrange
  hi! link LspDiagnosticsUnderlineError SayoriDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint SayoriDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation SayoriDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning SayoriDarkWarnLine
else
  hi! link SpecialKey SayoriDarkSubtle
endif

hi! link Comment SayoriDarkComment
hi! link Underlined SayoriDarkFgUnderline
hi! link Todo SayoriDarkTodo

hi! link Error SayoriDarkError
hi! link SpellBad SayoriDarkErrorLine
hi! link SpellLocal SayoriDarkWarnLine
hi! link SpellCap SayoriDarkInfoLine
hi! link SpellRare SayoriDarkInfoLine

hi! link Constant SayoriDarkPurple
hi! link String SayoriDarkYellow
hi! link Character SayoriDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SayoriDarkFg
hi! link Function SayoriDarkGreen

hi! link Statement SayoriDarkPink
hi! link Conditional SayoriDarkPink
hi! link Repeat SayoriDarkPink
hi! link Label SayoriDarkPink
hi! link Operator SayoriDarkPink
hi! link Keyword SayoriDarkPink
hi! link Exception SayoriDarkPink

hi! link PreProc SayoriDarkPink
hi! link Include SayoriDarkPink
hi! link Define SayoriDarkPink
hi! link Macro SayoriDarkPink
hi! link PreCondit SayoriDarkPink
hi! link StorageClass SayoriDarkPink
hi! link Structure SayoriDarkPink
hi! link Typedef SayoriDarkPink

hi! link Type SayoriDarkCyanItalic

hi! link Delimiter SayoriDarkFg

hi! link Special SayoriDarkPink
hi! link SpecialComment SayoriDarkCyanItalic
hi! link Tag SayoriDarkCyan
hi! link helpHyperTextJump SayoriDarkLink
hi! link helpCommand SayoriDarkPurple
hi! link helpExample SayoriDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
