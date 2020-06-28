" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'yuri_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:yuri_dark#palette.fg

let s:bglighter = g:yuri_dark#palette.bglighter
let s:bglight   = g:yuri_dark#palette.bglight
let s:bg        = g:yuri_dark#palette.bg
let s:bgdark    = g:yuri_dark#palette.bgdark
let s:bgdarker  = g:yuri_dark#palette.bgdarker

let s:comment   = g:yuri_dark#palette.comment
let s:selection = g:yuri_dark#palette.selection
let s:subtle    = g:yuri_dark#palette.subtle

let s:cyan      = g:yuri_dark#palette.cyan
let s:green     = g:yuri_dark#palette.green
let s:orange    = g:yuri_dark#palette.orange
let s:pink      = g:yuri_dark#palette.pink
let s:purple    = g:yuri_dark#palette.purple
let s:red       = g:yuri_dark#palette.red
let s:string_color    = g:yuri_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:yuri_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:yuri_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:yuri_dark_bold')
  let g:yuri_dark_bold = 1
endif

if !exists('g:yuri_dark_italic')
  let g:yuri_dark_italic = 1
endif

if !exists('g:yuri_dark_underline')
  let g:yuri_dark_underline = 1
endif

if !exists('g:yuri_dark_undercurl') && g:yuri_dark_underline != 0
  let g:yuri_dark_undercurl = 1
endif

if !exists('g:yuri_dark_inverse')
  let g:yuri_dark_inverse = 1
endif

if !exists('g:yuri_dark_colorterm')
  let g:yuri_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:yuri_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:yuri_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:yuri_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:yuri_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:yuri_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('YuriDarkBgLight', s:none, s:bglight)
call s:h('YuriDarkBgLighter', s:none, s:bglighter)
call s:h('YuriDarkBgDark', s:none, s:bgdark)
call s:h('YuriDarkBgDarker', s:none, s:bgdarker)

call s:h('YuriDarkFg', s:fg)
call s:h('YuriDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('YuriDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('YuriDarkComment', s:comment)
call s:h('YuriDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('YuriDarkSelection', s:none, s:selection)

call s:h('YuriDarkSubtle', s:subtle)

call s:h('YuriDarkCyan', s:cyan)
call s:h('YuriDarkCyanItalic', s:cyan, s:none, [s:attrs.italic])

call s:h('YuriDarkGreen', s:green)
call s:h('YuriDarkGreenBold', s:green, s:none, [s:attrs.bold])
call s:h('YuriDarkGreenItalic', s:green, s:none, [s:attrs.italic])
call s:h('YuriDarkGreenItalicUnderline', s:green, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('YuriDarkOrange', s:orange)
call s:h('YuriDarkOrangeBold', s:orange, s:none, [s:attrs.bold])
call s:h('YuriDarkOrangeItalic', s:orange, s:none, [s:attrs.italic])
call s:h('YuriDarkOrangeBoldItalic', s:orange, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('YuriDarkOrangeInverse', s:bg, s:orange)

call s:h('YuriDarkPink', s:pink)
call s:h('YuriDarkPinkItalic', s:pink, s:none, [s:attrs.italic])

call s:h('YuriDarkPurple', s:purple)
call s:h('YuriDarkPurpleBold', s:purple, s:none, [s:attrs.bold])
call s:h('YuriDarkPurpleItalic', s:purple, s:none, [s:attrs.italic])

call s:h('YuriDarkRed', s:red)
call s:h('YuriDarkRedInverse', s:fg, s:red)

call s:h('YuriDarkStringColor', s:string_color)
call s:h('YuriDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('YuriDarkError', s:red, s:none, [], s:red)

call s:h('YuriDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('YuriDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:orange)
call s:h('YuriDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:cyan)

call s:h('YuriDarkTodo', s:cyan, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('YuriDarkSearch', s:green, s:none, [s:attrs.inverse])
call s:h('YuriDarkBoundary', s:comment, s:bgdark)
call s:h('YuriDarkLink', s:cyan, s:none, [s:attrs.underline])

call s:h('YuriDarkDiffChange', s:orange, s:none)
call s:h('YuriDarkDiffText', s:bg, s:orange)
call s:h('YuriDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:yuri_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:purple, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  YuriDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr YuriDarkStringColor
hi! link DiffAdd      YuriDarkGreen
hi! link DiffAdded    DiffAdd
hi! link DiffChange   YuriDarkDiffChange
hi! link DiffDelete   YuriDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     YuriDarkDiffText
hi! link Directory    YuriDarkPurpleBold
hi! link ErrorMsg     YuriDarkRedInverse
hi! link FoldColumn   YuriDarkSubtle
hi! link Folded       YuriDarkBoundary
hi! link IncSearch    YuriDarkOrangeInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      YuriDarkFgBold
hi! link NonText      YuriDarkSubtle
" hi! link Pmenu        YuriDarkBgDark
" hi! link PmenuSbar    YuriDarkBgDark
hi! link PmenuSel     YuriDarkSelection
hi! link PmenuThumb   YuriDarkSelection
hi! link Question     YuriDarkFgBold
hi! link Search       YuriDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      YuriDarkBoundary
" hi! link TabLineFill  YuriDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        YuriDarkGreenBold
hi! link VertSplit    YuriDarkBoundary
hi! link Visual       YuriDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   YuriDarkOrangeInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:green, s:none, [s:attrs.underline])
call s:h('Conceal', s:cyan, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey YuriDarkRed
  hi! link LspDiagnosticsUnderline YuriDarkFgUnderline
  hi! link LspDiagnosticsInformation YuriDarkCyan
  hi! link LspDiagnosticsHint YuriDarkCyan
  hi! link LspDiagnosticsError YuriDarkError
  hi! link LspDiagnosticsWarning YuriDarkOrange
  hi! link LspDiagnosticsUnderlineError YuriDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint YuriDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation YuriDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning YuriDarkWarnLine
else
  hi! link SpecialKey YuriDarkSubtle
endif

hi! link Comment YuriDarkComment
hi! link Underlined YuriDarkFgUnderline
hi! link Todo YuriDarkTodo

hi! link Error YuriDarkError
hi! link SpellBad YuriDarkErrorLine
hi! link SpellLocal YuriDarkWarnLine
hi! link SpellCap YuriDarkInfoLine
hi! link SpellRare YuriDarkInfoLine

hi! link Constant YuriDarkPurple
hi! link String YuriDarkStringColor
hi! link Character YuriDarkPink
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier YuriDarkFg
hi! link Function YuriDarkGreen

hi! link Statement YuriDarkPink
hi! link Conditional YuriDarkPink
hi! link Repeat YuriDarkPink
hi! link Label YuriDarkPink
hi! link Operator YuriDarkPink
hi! link Keyword YuriDarkPink
hi! link Exception YuriDarkPink

hi! link PreProc YuriDarkPink
hi! link Include YuriDarkPink
hi! link Define YuriDarkPink
hi! link Macro YuriDarkPink
hi! link PreCondit YuriDarkPink
hi! link StorageClass YuriDarkPink
hi! link Structure YuriDarkPink
hi! link Typedef YuriDarkPink

hi! link Type YuriDarkCyanItalic

hi! link Delimiter YuriDarkFg

hi! link Special YuriDarkPink
hi! link SpecialComment YuriDarkCyanItalic
hi! link Tag YuriDarkCyan
hi! link helpHyperTextJump YuriDarkLink
hi! link helpCommand YuriDarkPurple
hi! link helpExample YuriDarkGreen
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
