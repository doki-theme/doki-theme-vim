" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'natsuki_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:natsuki_dark#palette.fg

let s:bglighter = g:natsuki_dark#palette.bglighter
let s:bglight   = g:natsuki_dark#palette.bglight
let s:bg        = g:natsuki_dark#palette.bg
let s:bgdark    = g:natsuki_dark#palette.bgdark
let s:bgdarker  = g:natsuki_dark#palette.bgdarker

let s:comment   = g:natsuki_dark#palette.comment
let s:selection = g:natsuki_dark#palette.selection
let s:subtle    = g:natsuki_dark#palette.subtle

let s:key_color      = g:natsuki_dark#palette.key_color
let s:class_name     = g:natsuki_dark#palette.class_name
let s:parameter_color    = g:natsuki_dark#palette.parameter_color
let s:keyword_color      = g:natsuki_dark#palette.keyword_color
let s:constants_color    = g:natsuki_dark#palette.constants_color
let s:red       = g:natsuki_dark#palette.red
let s:string_color    = g:natsuki_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:natsuki_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:natsuki_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:natsuki_dark_bold')
  let g:natsuki_dark_bold = 1
endif

if !exists('g:natsuki_dark_italic')
  let g:natsuki_dark_italic = 1
endif

if !exists('g:natsuki_dark_underline')
  let g:natsuki_dark_underline = 1
endif

if !exists('g:natsuki_dark_undercurl') && g:natsuki_dark_underline != 0
  let g:natsuki_dark_undercurl = 1
endif

if !exists('g:natsuki_dark_inverse')
  let g:natsuki_dark_inverse = 1
endif

if !exists('g:natsuki_dark_colorterm')
  let g:natsuki_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:natsuki_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:natsuki_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:natsuki_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:natsuki_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:natsuki_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('NatsukiDarkBgLight', s:none, s:bglight)
call s:h('NatsukiDarkBgLighter', s:none, s:bglighter)
call s:h('NatsukiDarkBgDark', s:none, s:bgdark)
call s:h('NatsukiDarkBgDarker', s:none, s:bgdarker)

call s:h('NatsukiDarkFg', s:fg)
call s:h('NatsukiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NatsukiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NatsukiDarkComment', s:comment)
call s:h('NatsukiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NatsukiDarkSelection', s:none, s:selection)

call s:h('NatsukiDarkSubtle', s:subtle)

call s:h('NatsukiDarkKeyColor', s:key_color)
call s:h('NatsukiDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('NatsukiDarkClassName', s:class_name)
call s:h('NatsukiDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('NatsukiDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('NatsukiDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NatsukiDarkParameter', s:parameter_color)
call s:h('NatsukiDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('NatsukiDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('NatsukiDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NatsukiDarkParameterInverse', s:bg, s:parameter_color)

call s:h('NatsukiDarkKeyword', s:keyword_color)
call s:h('NatsukiDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('NatsukiDarkConstants', s:constants_color)
call s:h('NatsukiDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('NatsukiDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('NatsukiDarkRed', s:red)
call s:h('NatsukiDarkRedInverse', s:fg, s:red)

call s:h('NatsukiDarkStringColor', s:string_color)
call s:h('NatsukiDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('NatsukiDarkError', s:red, s:none, [], s:red)

call s:h('NatsukiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NatsukiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('NatsukiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('NatsukiDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NatsukiDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('NatsukiDarkBoundary', s:comment, s:bgdark)
call s:h('NatsukiDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('NatsukiDarkDiffChange', s:parameter_color, s:none)
call s:h('NatsukiDarkDiffText', s:bg, s:parameter_color)
call s:h('NatsukiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:natsuki_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  NatsukiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NatsukiDarkStringColor
hi! link DiffAdd      NatsukiDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NatsukiDarkDiffChange
hi! link DiffDelete   NatsukiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NatsukiDarkDiffText
hi! link Directory    NatsukiDarkConstantsBold
hi! link ErrorMsg     NatsukiDarkRedInverse
hi! link FoldColumn   NatsukiDarkSubtle
hi! link Folded       NatsukiDarkBoundary
hi! link IncSearch    NatsukiDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NatsukiDarkFgBold
hi! link NonText      NatsukiDarkSubtle
" hi! link Pmenu        NatsukiDarkBgDark
" hi! link PmenuSbar    NatsukiDarkBgDark
hi! link PmenuSel     NatsukiDarkSelection
hi! link PmenuThumb   NatsukiDarkSelection
hi! link Question     NatsukiDarkFgBold
hi! link Search       NatsukiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NatsukiDarkBoundary
" hi! link TabLineFill  NatsukiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        NatsukiDarkClassNameBold
hi! link VertSplit    NatsukiDarkBoundary
hi! link Visual       NatsukiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NatsukiDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NatsukiDarkRed
  hi! link LspDiagnosticsUnderline NatsukiDarkFgUnderline
  hi! link LspDiagnosticsInformation NatsukiDarkKeyColor
  hi! link LspDiagnosticsHint NatsukiDarkKeyColor
  hi! link LspDiagnosticsError NatsukiDarkError
  hi! link LspDiagnosticsWarning NatsukiDarkParameter
  hi! link LspDiagnosticsUnderlineError NatsukiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint NatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation NatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning NatsukiDarkWarnLine
else
  hi! link SpecialKey NatsukiDarkSubtle
endif

hi! link Comment NatsukiDarkComment
hi! link Underlined NatsukiDarkFgUnderline
hi! link Todo NatsukiDarkTodo

hi! link Error NatsukiDarkError
hi! link SpellBad NatsukiDarkErrorLine
hi! link SpellLocal NatsukiDarkWarnLine
hi! link SpellCap NatsukiDarkInfoLine
hi! link SpellRare NatsukiDarkInfoLine

hi! link Constant NatsukiDarkConstants
hi! link String NatsukiDarkStringColor
hi! link Character NatsukiDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NatsukiDarkFg
hi! link Function NatsukiDarkClassName

hi! link Statement NatsukiDarkKeyword
hi! link Conditional NatsukiDarkKeyword
hi! link Repeat NatsukiDarkKeyword
hi! link Label NatsukiDarkKeyword
hi! link Operator NatsukiDarkKeyword
hi! link Keyword NatsukiDarkKeyword
hi! link Exception NatsukiDarkKeyword

hi! link PreProc NatsukiDarkKeyword
hi! link Include NatsukiDarkKeyword
hi! link Define NatsukiDarkKeyword
hi! link Macro NatsukiDarkKeyword
hi! link PreCondit NatsukiDarkKeyword
hi! link StorageClass NatsukiDarkKeyword
hi! link Structure NatsukiDarkKeyword
hi! link Typedef NatsukiDarkKeyword

hi! link Type NatsukiDarkKeyColorItalic

hi! link Delimiter NatsukiDarkFg

hi! link Special NatsukiDarkKeyword
hi! link SpecialComment NatsukiDarkKeyColorItalic
hi! link Tag NatsukiDarkKeyColor
hi! link helpHyperTextJump NatsukiDarkLink
hi! link helpCommand NatsukiDarkConstants
hi! link helpExample NatsukiDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
