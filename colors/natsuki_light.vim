" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'natsuki_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:natsuki_light#palette.fg

let s:bglighter = g:natsuki_light#palette.bglighter
let s:bglight   = g:natsuki_light#palette.bglight
let s:bg        = g:natsuki_light#palette.bg
let s:bgdark    = g:natsuki_light#palette.bgdark
let s:bgdarker  = g:natsuki_light#palette.bgdarker

let s:comment   = g:natsuki_light#palette.comment
let s:selection = g:natsuki_light#palette.selection
let s:subtle    = g:natsuki_light#palette.subtle

let s:key_color      = g:natsuki_light#palette.key_color
let s:class_name     = g:natsuki_light#palette.class_name
let s:parameter_color    = g:natsuki_light#palette.parameter_color
let s:keyword_color      = g:natsuki_light#palette.keyword_color
let s:constants_color    = g:natsuki_light#palette.constants_color
let s:red       = g:natsuki_light#palette.red
let s:string_color    = g:natsuki_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:natsuki_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:natsuki_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:natsuki_light_bold')
  let g:natsuki_light_bold = 1
endif

if !exists('g:natsuki_light_italic')
  let g:natsuki_light_italic = 1
endif

if !exists('g:natsuki_light_underline')
  let g:natsuki_light_underline = 1
endif

if !exists('g:natsuki_light_undercurl') && g:natsuki_light_underline != 0
  let g:natsuki_light_undercurl = 1
endif

if !exists('g:natsuki_light_inverse')
  let g:natsuki_light_inverse = 1
endif

if !exists('g:natsuki_light_colorterm')
  let g:natsuki_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:natsuki_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:natsuki_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:natsuki_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:natsuki_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:natsuki_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('NatsukiLightBgLight', s:none, s:bglight)
call s:h('NatsukiLightBgLighter', s:none, s:bglighter)
call s:h('NatsukiLightBgDark', s:none, s:bgdark)
call s:h('NatsukiLightBgDarker', s:none, s:bgdarker)

call s:h('NatsukiLightFg', s:fg)
call s:h('NatsukiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('NatsukiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('NatsukiLightComment', s:comment)
call s:h('NatsukiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('NatsukiLightSelection', s:none, s:selection)

call s:h('NatsukiLightSubtle', s:subtle)

call s:h('NatsukiLightKeyColor', s:key_color)
call s:h('NatsukiLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('NatsukiLightClassName', s:class_name)
call s:h('NatsukiLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('NatsukiLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('NatsukiLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('NatsukiLightParameter', s:parameter_color)
call s:h('NatsukiLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('NatsukiLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('NatsukiLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('NatsukiLightParameterInverse', s:bg, s:parameter_color)

call s:h('NatsukiLightKeyword', s:keyword_color)
call s:h('NatsukiLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('NatsukiLightConstants', s:constants_color)
call s:h('NatsukiLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('NatsukiLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('NatsukiLightRed', s:red)
call s:h('NatsukiLightRedInverse', s:fg, s:red)

call s:h('NatsukiLightStringColor', s:string_color)
call s:h('NatsukiLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('NatsukiLightError', s:red, s:none, [], s:red)

call s:h('NatsukiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('NatsukiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('NatsukiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('NatsukiLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('NatsukiLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('NatsukiLightBoundary', s:comment, s:bgdark)
call s:h('NatsukiLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('NatsukiLightDiffChange', s:parameter_color, s:none)
call s:h('NatsukiLightDiffText', s:bg, s:parameter_color)
call s:h('NatsukiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:natsuki_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  NatsukiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr NatsukiLightStringColor
hi! link DiffAdd      NatsukiLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   NatsukiLightDiffChange
hi! link DiffDelete   NatsukiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     NatsukiLightDiffText
hi! link Directory    NatsukiLightConstantsBold
hi! link ErrorMsg     NatsukiLightRedInverse
hi! link FoldColumn   NatsukiLightSubtle
hi! link Folded       NatsukiLightBoundary
hi! link IncSearch    NatsukiLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      NatsukiLightFgBold
hi! link NonText      NatsukiLightSubtle
" hi! link Pmenu        NatsukiLightBgDark
" hi! link PmenuSbar    NatsukiLightBgDark
hi! link PmenuSel     NatsukiLightSelection
hi! link PmenuThumb   NatsukiLightSelection
hi! link Question     NatsukiLightFgBold
hi! link Search       NatsukiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      NatsukiLightBoundary
" hi! link TabLineFill  NatsukiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        NatsukiLightClassNameBold
hi! link VertSplit    NatsukiLightBoundary
hi! link Visual       NatsukiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   NatsukiLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey NatsukiLightRed
  hi! link LspDiagnosticsUnderline NatsukiLightFgUnderline
  hi! link LspDiagnosticsInformation NatsukiLightKeyColor
  hi! link LspDiagnosticsHint NatsukiLightKeyColor
  hi! link LspDiagnosticsError NatsukiLightError
  hi! link LspDiagnosticsWarning NatsukiLightParameter
  hi! link LspDiagnosticsUnderlineError NatsukiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint NatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation NatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning NatsukiLightWarnLine
else
  hi! link SpecialKey NatsukiLightSubtle
endif

hi! link Comment NatsukiLightComment
hi! link Underlined NatsukiLightFgUnderline
hi! link Todo NatsukiLightTodo

hi! link Error NatsukiLightError
hi! link SpellBad NatsukiLightErrorLine
hi! link SpellLocal NatsukiLightWarnLine
hi! link SpellCap NatsukiLightInfoLine
hi! link SpellRare NatsukiLightInfoLine

hi! link Constant NatsukiLightConstants
hi! link String NatsukiLightStringColor
hi! link Character NatsukiLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier NatsukiLightFg
hi! link Function NatsukiLightClassName

hi! link Statement NatsukiLightKeyword
hi! link Conditional NatsukiLightKeyword
hi! link Repeat NatsukiLightKeyword
hi! link Label NatsukiLightKeyword
hi! link Operator NatsukiLightKeyword
hi! link Keyword NatsukiLightKeyword
hi! link Exception NatsukiLightKeyword

hi! link PreProc NatsukiLightKeyword
hi! link Include NatsukiLightKeyword
hi! link Define NatsukiLightKeyword
hi! link Macro NatsukiLightKeyword
hi! link PreCondit NatsukiLightKeyword
hi! link StorageClass NatsukiLightKeyword
hi! link Structure NatsukiLightKeyword
hi! link Typedef NatsukiLightKeyword

hi! link Type NatsukiLightKeyColorItalic

hi! link Delimiter NatsukiLightFg

hi! link Special NatsukiLightKeyword
hi! link SpecialComment NatsukiLightKeyColorItalic
hi! link Tag NatsukiLightKeyColor
hi! link helpHyperTextJump NatsukiLightLink
hi! link helpCommand NatsukiLightConstants
hi! link helpExample NatsukiLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
