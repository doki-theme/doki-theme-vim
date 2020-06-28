" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'megumin'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:megumin#palette.fg

let s:bglighter = g:megumin#palette.bglighter
let s:bglight   = g:megumin#palette.bglight
let s:bg        = g:megumin#palette.bg
let s:bgdark    = g:megumin#palette.bgdark
let s:bgdarker  = g:megumin#palette.bgdarker

let s:comment   = g:megumin#palette.comment
let s:selection = g:megumin#palette.selection
let s:subtle    = g:megumin#palette.subtle

let s:cyan      = g:megumin#palette.cyan
let s:green     = g:megumin#palette.green
let s:orange    = g:megumin#palette.orange
let s:pink      = g:megumin#palette.pink
let s:purple    = g:megumin#palette.purple
let s:red       = g:megumin#palette.red
let s:string_color    = g:megumin#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:megumin#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:megumin#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:megumin_bold')
  let g:megumin_bold = 1
endif

if !exists('g:megumin_italic')
  let g:megumin_italic = 1
endif

if !exists('g:megumin_underline')
  let g:megumin_underline = 1
endif

if !exists('g:megumin_undercurl') && g:megumin_underline != 0
  let g:megumin_undercurl = 1
endif

if !exists('g:megumin_inverse')
  let g:megumin_inverse = 1
endif

if !exists('g:megumin_colorterm')
  let g:megumin_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:megumin_bold == 1 ? 'bold' : 0,
      \ 'italic': g:megumin_italic == 1 ? 'italic' : 0,
      \ 'underline': g:megumin_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:megumin_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:megumin_inverse == 1 ? 'inverse' : 0,
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

call s:h('MeguminBgLight', s:none, s:bglight)
call s:h('MeguminBgLighter', s:none, s:bglighter)
call s:h('MeguminBgDark', s:none, s:bgdark)
call s:h('MeguminBgDarker', s:none, s:bgdarker)

call s:h('MeguminFg', s:fg)
call s:h('MeguminFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MeguminFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MeguminComment', s:comment)
call s:h('MeguminCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MeguminSelection', s:none, s:selection)

call s:h('MeguminSubtle', s:subtle)

call s:h('MeguminCyan', s:cyan)
call s:h('MeguminCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('MeguminGreen', s:green)
call s:h('MeguminGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('MeguminGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('MeguminGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MeguminOrange', s:orange)
call s:h('MeguminOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('MeguminOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('MeguminOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MeguminOrangeInverse', s:bg, s:orange)

call s:h('MeguminPink', s:pink)
call s:h('MeguminPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('MeguminPurple', s:purple)
call s:h('MeguminPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('MeguminPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('MeguminRed', s:red)
call s:h('MeguminRedInverse', s:fg, s:red)

call s:h('MeguminStringColor', s:string_color)
call s:h('MeguminStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MeguminError', s:red, s:none, [], s:red)

call s:h('MeguminErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MeguminWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('MeguminInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('MeguminTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MeguminSearch', s:green, s:none, [s:attrs.inverse])
call s:h('MeguminBoundary', s:comment, s:bgdark)
call s:h('MeguminLink', s:cyan, s:none, [s:attrs.underline])

call s:h('MeguminDiffChange', s:orange, s:none)
call s:h('MeguminDiffText', s:bg, s:orange)
call s:h('MeguminDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:megumin_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MeguminBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MeguminStringColor
hi! link DiffAdd      MeguminGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MeguminDiffChange
hi! link DiffDelete   MeguminDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MeguminDiffText
hi! link Directory    MeguminPurpleBold
hi! link ErrorMsg     MeguminRedInverse
hi! link FoldColumn   MeguminSubtle
hi! link Folded       MeguminBoundary
hi! link IncSearch    MeguminOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MeguminFgBold
hi! link NonText      MeguminSubtle
" hi! link Pmenu        MeguminBgDark
" hi! link PmenuSbar    MeguminBgDark
hi! link PmenuSel     MeguminSelection
hi! link PmenuThumb   MeguminSelection
hi! link Question     MeguminFgBold
hi! link Search       MeguminSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MeguminBoundary
" hi! link TabLineFill  MeguminBgDarker
hi! link TabLineSel   Normal
hi! link Title        MeguminGreenBold
hi! link VertSplit    MeguminBoundary
hi! link Visual       MeguminSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MeguminOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MeguminRed
  hi! link LspDiagnosticsUnderline MeguminFgUnderline
  hi! link LspDiagnosticsInformation MeguminCyan
  hi! link LspDiagnosticsHint MeguminCyan
  hi! link LspDiagnosticsError MeguminError
  hi! link LspDiagnosticsWarning MeguminOrange
  hi! link LspDiagnosticsUnderlineError MeguminErrorLine
  hi! link LspDiagnosticsUnderlineHint MeguminInfoLine
  hi! link LspDiagnosticsUnderlineInformation MeguminInfoLine
  hi! link LspDiagnosticsUnderlineWarning MeguminWarnLine
else
  hi! link SpecialKey MeguminSubtle
endif

hi! link Comment MeguminComment
hi! link Underlined MeguminFgUnderline
hi! link Todo MeguminTodo

hi! link Error MeguminError
hi! link SpellBad MeguminErrorLine
hi! link SpellLocal MeguminWarnLine
hi! link SpellCap MeguminInfoLine
hi! link SpellRare MeguminInfoLine

hi! link Constant MeguminPurple
hi! link String MeguminStringColor
hi! link Character MeguminPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MeguminFg
hi! link Function MeguminGreen

hi! link Statement MeguminPink
hi! link Conditional MeguminPink
hi! link Repeat MeguminPink
hi! link Label MeguminPink
hi! link Operator MeguminPink
hi! link Keyword MeguminPink
hi! link Exception MeguminPink

hi! link PreProc MeguminPink
hi! link Include MeguminPink
hi! link Define MeguminPink
hi! link Macro MeguminPink
hi! link PreCondit MeguminPink
hi! link StorageClass MeguminPink
hi! link Structure MeguminPink
hi! link Typedef MeguminPink

hi! link Type MeguminCyanItalic

hi! link Delimiter MeguminFg

hi! link Special MeguminPink
hi! link SpecialComment MeguminCyanItalic
hi! link Tag MeguminCyan
hi! link helpHyperTextJump MeguminLink
hi! link helpCommand MeguminPurple
hi! link helpExample MeguminGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
