" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'emilia-dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:emilia-dark#palette.fg

let s:bglighter = g:emilia-dark#palette.bglighter
let s:bglight   = g:emilia-dark#palette.bglight
let s:bg        = g:emilia-dark#palette.bg
let s:bgdark    = g:emilia-dark#palette.bgdark
let s:bgdarker  = g:emilia-dark#palette.bgdarker

let s:comment   = g:emilia-dark#palette.comment
let s:selection = g:emilia-dark#palette.selection
let s:subtle    = g:emilia-dark#palette.subtle

let s:cyan      = g:emilia-dark#palette.cyan
let s:green     = g:emilia-dark#palette.green
let s:orange    = g:emilia-dark#palette.orange
let s:pink      = g:emilia-dark#palette.pink
let s:purple    = g:emilia-dark#palette.purple
let s:red       = g:emilia-dark#palette.red
let s:yellow    = g:emilia-dark#palette.yellow

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:emilia-dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:emilia-dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:emilia-dark_bold')
  let g:emilia-dark_bold = 1
endif

if !exists('g:emilia-dark_italic')
  let g:emilia-dark_italic = 1
endif

if !exists('g:emilia-dark_underline')
  let g:emilia-dark_underline = 1
endif

if !exists('g:emilia-dark_undercurl') && g:emilia-dark_underline != 0
  let g:emilia-dark_undercurl = 1
endif

if !exists('g:emilia-dark_inverse')
  let g:emilia-dark_inverse = 1
endif

if !exists('g:emilia-dark_colorterm')
  let g:emilia-dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:emilia-dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:emilia-dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:emilia-dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:emilia-dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:emilia-dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('EmiliaDarkBgLight', s:none, s:bglight)
call s:h('EmiliaDarkBgLighter', s:none, s:bglighter)
call s:h('EmiliaDarkBgDark', s:none, s:bgdark)
call s:h('EmiliaDarkBgDarker', s:none, s:bgdarker)

call s:h('EmiliaDarkFg', s:fg)
call s:h('EmiliaDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('EmiliaDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('EmiliaDarkComment', s:comment)
call s:h('EmiliaDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('EmiliaDarkSelection', s:none, s:selection)

call s:h('EmiliaDarkSubtle', s:subtle)

call s:h('EmiliaDarkCyan', s:cyan)
call s:h('EmiliaDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('EmiliaDarkGreen', s:green)
call s:h('EmiliaDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('EmiliaDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('EmiliaDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('EmiliaDarkOrange', s:orange)
call s:h('EmiliaDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('EmiliaDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('EmiliaDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('EmiliaDarkOrangeInverse', s:bg, s:orange)

call s:h('EmiliaDarkPink', s:pink)
call s:h('EmiliaDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('EmiliaDarkPurple', s:purple)
call s:h('EmiliaDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('EmiliaDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('EmiliaDarkRed', s:red)
call s:h('EmiliaDarkRedInverse', s:fg, s:red)

call s:h('EmiliaDarkYellow', s:yellow)
call s:h('EmiliaDarkYellowItalic', s:yellow, s:none, [s:attrs.italic])

call s:h('EmiliaDarkError', s:red, s:none, [], s:red)

call s:h('EmiliaDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('EmiliaDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('EmiliaDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('EmiliaDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('EmiliaDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('EmiliaDarkBoundary', s:comment, s:bgdark)
call s:h('EmiliaDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('EmiliaDarkDiffChange', s:orange, s:none)
call s:h('EmiliaDarkDiffText', s:bg, s:orange)
call s:h('EmiliaDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 

set background=dark

" Required as some plugins will overwrite
call s:h('Normal', s:fg, g:emilia-dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

hi! link ColorColumn  EmiliaDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr EmiliaDarkYellow
hi! link DiffAdd      EmiliaDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   EmiliaDarkDiffChange
hi! link DiffDelete   EmiliaDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     EmiliaDarkDiffText
hi! link Directory    EmiliaDarkPurpleBold
hi! link ErrorMsg     EmiliaDarkRedInverse
hi! link FoldColumn   EmiliaDarkSubtle
hi! link Folded       EmiliaDarkBoundary
hi! link IncSearch    EmiliaDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      EmiliaDarkFgBold
hi! link NonText      EmiliaDarkSubtle
hi! link Pmenu        EmiliaDarkBgDark
hi! link PmenuSbar    EmiliaDarkBgDark
hi! link PmenuSel     EmiliaDarkSelection
hi! link PmenuThumb   EmiliaDarkSelection
hi! link Question     EmiliaDarkFgBold
hi! link Search       EmiliaDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      EmiliaDarkBoundary
hi! link TabLineFill  EmiliaDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        EmiliaDarkGreenBold
hi! link VertSplit    EmiliaDarkBoundary
hi! link Visual       EmiliaDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   EmiliaDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey EmiliaDarkRed
  hi! link LspDiagnosticsUnderline EmiliaDarkFgUnderline
  hi! link LspDiagnosticsInformation EmiliaDarkCyan
  hi! link LspDiagnosticsHint EmiliaDarkCyan
  hi! link LspDiagnosticsError EmiliaDarkError
  hi! link LspDiagnosticsWarning EmiliaDarkOrange
  hi! link LspDiagnosticsUnderlineError EmiliaDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint EmiliaDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation EmiliaDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning EmiliaDarkWarnLine
else
  hi! link SpecialKey EmiliaDarkSubtle
endif

hi! link Comment EmiliaDarkComment
hi! link Underlined EmiliaDarkFgUnderline
hi! link Todo EmiliaDarkTodo

hi! link Error EmiliaDarkError
hi! link SpellBad EmiliaDarkErrorLine
hi! link SpellLocal EmiliaDarkWarnLine
hi! link SpellCap EmiliaDarkInfoLine
hi! link SpellRare EmiliaDarkInfoLine

hi! link Constant EmiliaDarkPurple
hi! link String EmiliaDarkYellow
hi! link Character EmiliaDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier EmiliaDarkFg
hi! link Function EmiliaDarkGreen

hi! link Statement EmiliaDarkPink
hi! link Conditional EmiliaDarkPink
hi! link Repeat EmiliaDarkPink
hi! link Label EmiliaDarkPink
hi! link Operator EmiliaDarkPink
hi! link Keyword EmiliaDarkPink
hi! link Exception EmiliaDarkPink

hi! link PreProc EmiliaDarkPink
hi! link Include EmiliaDarkPink
hi! link Define EmiliaDarkPink
hi! link Macro EmiliaDarkPink
hi! link PreCondit EmiliaDarkPink
hi! link StorageClass EmiliaDarkPink
hi! link Structure EmiliaDarkPink
hi! link Typedef EmiliaDarkPink

hi! link Type EmiliaDarkCyanItalic

hi! link Delimiter EmiliaDarkFg

hi! link Special EmiliaDarkPink
hi! link SpecialComment EmiliaDarkCyanItalic
hi! link Tag EmiliaDarkCyan
hi! link helpHyperTextJump EmiliaDarkLink
hi! link helpCommand EmiliaDarkPurple
hi! link helpExample EmiliaDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
