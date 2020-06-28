" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'darkness_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:darkness_dark#palette.fg

let s:bglighter = g:darkness_dark#palette.bglighter
let s:bglight   = g:darkness_dark#palette.bglight
let s:bg        = g:darkness_dark#palette.bg
let s:bgdark    = g:darkness_dark#palette.bgdark
let s:bgdarker  = g:darkness_dark#palette.bgdarker

let s:comment   = g:darkness_dark#palette.comment
let s:selection = g:darkness_dark#palette.selection
let s:subtle    = g:darkness_dark#palette.subtle

let s:cyan      = g:darkness_dark#palette.cyan
let s:green     = g:darkness_dark#palette.green
let s:orange    = g:darkness_dark#palette.orange
let s:pink      = g:darkness_dark#palette.pink
let s:purple    = g:darkness_dark#palette.purple
let s:red       = g:darkness_dark#palette.red
let s:string_color    = g:darkness_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:darkness_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:darkness_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:darkness_dark_bold')
  let g:darkness_dark_bold = 1
endif

if !exists('g:darkness_dark_italic')
  let g:darkness_dark_italic = 1
endif

if !exists('g:darkness_dark_underline')
  let g:darkness_dark_underline = 1
endif

if !exists('g:darkness_dark_undercurl') && g:darkness_dark_underline != 0
  let g:darkness_dark_undercurl = 1
endif

if !exists('g:darkness_dark_inverse')
  let g:darkness_dark_inverse = 1
endif

if !exists('g:darkness_dark_colorterm')
  let g:darkness_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:darkness_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:darkness_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:darkness_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:darkness_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:darkness_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('DarknessDarkBgLight', s:none, s:bglight)
call s:h('DarknessDarkBgLighter', s:none, s:bglighter)
call s:h('DarknessDarkBgDark', s:none, s:bgdark)
call s:h('DarknessDarkBgDarker', s:none, s:bgdarker)

call s:h('DarknessDarkFg', s:fg)
call s:h('DarknessDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DarknessDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DarknessDarkComment', s:comment)
call s:h('DarknessDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DarknessDarkSelection', s:none, s:selection)

call s:h('DarknessDarkSubtle', s:subtle)

call s:h('DarknessDarkCyan', s:cyan)
call s:h('DarknessDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('DarknessDarkGreen', s:green)
call s:h('DarknessDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('DarknessDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('DarknessDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DarknessDarkOrange', s:orange)
call s:h('DarknessDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('DarknessDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('DarknessDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DarknessDarkOrangeInverse', s:bg, s:orange)

call s:h('DarknessDarkPink', s:pink)
call s:h('DarknessDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('DarknessDarkPurple', s:purple)
call s:h('DarknessDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('DarknessDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('DarknessDarkRed', s:red)
call s:h('DarknessDarkRedInverse', s:fg, s:red)

call s:h('DarknessDarkStringColor', s:string_color)
call s:h('DarknessDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('DarknessDarkError', s:red, s:none, [], s:red)

call s:h('DarknessDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DarknessDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('DarknessDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('DarknessDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DarknessDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('DarknessDarkBoundary', s:comment, s:bgdark)
call s:h('DarknessDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('DarknessDarkDiffChange', s:orange, s:none)
call s:h('DarknessDarkDiffText', s:bg, s:orange)
call s:h('DarknessDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:darkness_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  DarknessDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DarknessDarkStringColor
hi! link DiffAdd      DarknessDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DarknessDarkDiffChange
hi! link DiffDelete   DarknessDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DarknessDarkDiffText
hi! link Directory    DarknessDarkPurpleBold
hi! link ErrorMsg     DarknessDarkRedInverse
hi! link FoldColumn   DarknessDarkSubtle
hi! link Folded       DarknessDarkBoundary
hi! link IncSearch    DarknessDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DarknessDarkFgBold
hi! link NonText      DarknessDarkSubtle
" hi! link Pmenu        DarknessDarkBgDark
" hi! link PmenuSbar    DarknessDarkBgDark
hi! link PmenuSel     DarknessDarkSelection
hi! link PmenuThumb   DarknessDarkSelection
hi! link Question     DarknessDarkFgBold
hi! link Search       DarknessDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DarknessDarkBoundary
" hi! link TabLineFill  DarknessDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        DarknessDarkGreenBold
hi! link VertSplit    DarknessDarkBoundary
hi! link Visual       DarknessDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DarknessDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DarknessDarkRed
  hi! link LspDiagnosticsUnderline DarknessDarkFgUnderline
  hi! link LspDiagnosticsInformation DarknessDarkCyan
  hi! link LspDiagnosticsHint DarknessDarkCyan
  hi! link LspDiagnosticsError DarknessDarkError
  hi! link LspDiagnosticsWarning DarknessDarkOrange
  hi! link LspDiagnosticsUnderlineError DarknessDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint DarknessDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation DarknessDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning DarknessDarkWarnLine
else
  hi! link SpecialKey DarknessDarkSubtle
endif

hi! link Comment DarknessDarkComment
hi! link Underlined DarknessDarkFgUnderline
hi! link Todo DarknessDarkTodo

hi! link Error DarknessDarkError
hi! link SpellBad DarknessDarkErrorLine
hi! link SpellLocal DarknessDarkWarnLine
hi! link SpellCap DarknessDarkInfoLine
hi! link SpellRare DarknessDarkInfoLine

hi! link Constant DarknessDarkPurple
hi! link String DarknessDarkStringColor
hi! link Character DarknessDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DarknessDarkFg
hi! link Function DarknessDarkGreen

hi! link Statement DarknessDarkPink
hi! link Conditional DarknessDarkPink
hi! link Repeat DarknessDarkPink
hi! link Label DarknessDarkPink
hi! link Operator DarknessDarkPink
hi! link Keyword DarknessDarkPink
hi! link Exception DarknessDarkPink

hi! link PreProc DarknessDarkPink
hi! link Include DarknessDarkPink
hi! link Define DarknessDarkPink
hi! link Macro DarknessDarkPink
hi! link PreCondit DarknessDarkPink
hi! link StorageClass DarknessDarkPink
hi! link Structure DarknessDarkPink
hi! link Typedef DarknessDarkPink

hi! link Type DarknessDarkCyanItalic

hi! link Delimiter DarknessDarkFg

hi! link Special DarknessDarkPink
hi! link SpecialComment DarknessDarkCyanItalic
hi! link Tag DarknessDarkCyan
hi! link helpHyperTextJump DarknessDarkLink
hi! link helpCommand DarknessDarkPurple
hi! link helpExample DarknessDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
