" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rias_crimson'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rias_crimson#palette.fg

let s:bglighter = g:rias_crimson#palette.bglighter
let s:bglight   = g:rias_crimson#palette.bglight
let s:bg        = g:rias_crimson#palette.bg
let s:bgdark    = g:rias_crimson#palette.bgdark
let s:bgdarker  = g:rias_crimson#palette.bgdarker

let s:comment   = g:rias_crimson#palette.comment
let s:selection = g:rias_crimson#palette.selection
let s:subtle    = g:rias_crimson#palette.subtle

let s:key_color      = g:rias_crimson#palette.key_color
let s:class_name     = g:rias_crimson#palette.class_name
let s:parameter_color    = g:rias_crimson#palette.parameter_color
let s:keyword_color      = g:rias_crimson#palette.keyword_color
let s:constants_color    = g:rias_crimson#palette.constants_color
let s:red       = g:rias_crimson#palette.red
let s:string_color    = g:rias_crimson#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rias_crimson#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rias_crimson#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rias_crimson_bold')
  let g:rias_crimson_bold = 1
endif

if !exists('g:rias_crimson_italic')
  let g:rias_crimson_italic = 1
endif

if !exists('g:rias_crimson_underline')
  let g:rias_crimson_underline = 1
endif

if !exists('g:rias_crimson_undercurl') && g:rias_crimson_underline != 0
  let g:rias_crimson_undercurl = 1
endif

if !exists('g:rias_crimson_inverse')
  let g:rias_crimson_inverse = 1
endif

if !exists('g:rias_crimson_colorterm')
  let g:rias_crimson_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:rias_crimson_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rias_crimson_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rias_crimson_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rias_crimson_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rias_crimson_inverse == 1 ? 'inverse' : 0,
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

call s:h('RiasCrimsonBgLight', s:none, s:bglight)
call s:h('RiasCrimsonBgLighter', s:none, s:bglighter)
call s:h('RiasCrimsonBgDark', s:none, s:bgdark)
call s:h('RiasCrimsonBgDarker', s:none, s:bgdarker)

call s:h('RiasCrimsonFg', s:fg)
call s:h('RiasCrimsonFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RiasCrimsonFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RiasCrimsonComment', s:comment)
call s:h('RiasCrimsonCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RiasCrimsonSelection', s:none, s:selection)

call s:h('RiasCrimsonSubtle', s:subtle)

call s:h('RiasCrimsonKeyColor', s:key_color)
call s:h('RiasCrimsonKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RiasCrimsonClassName', s:class_name)
call s:h('RiasCrimsonClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RiasCrimsonClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RiasCrimsonClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RiasCrimsonParameter', s:parameter_color)
call s:h('RiasCrimsonParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RiasCrimsonParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RiasCrimsonParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RiasCrimsonParameterInverse', s:bg, s:parameter_color)

call s:h('RiasCrimsonKeyword', s:keyword_color)
call s:h('RiasCrimsonKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RiasCrimsonConstants', s:constants_color)
call s:h('RiasCrimsonConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RiasCrimsonConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RiasCrimsonRed', s:red)
call s:h('RiasCrimsonRedInverse', s:fg, s:red)

call s:h('RiasCrimsonStringColor', s:string_color)
call s:h('RiasCrimsonStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RiasCrimsonError', s:red, s:none, [], s:red)

call s:h('RiasCrimsonErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RiasCrimsonWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RiasCrimsonInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RiasCrimsonTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RiasCrimsonSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RiasCrimsonBoundary', s:comment, s:bgdark)
call s:h('RiasCrimsonLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RiasCrimsonDiffChange', s:parameter_color, s:none)
call s:h('RiasCrimsonDiffText', s:bg, s:parameter_color)
call s:h('RiasCrimsonDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rias_crimson_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RiasCrimsonBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RiasCrimsonStringColor
hi! link DiffAdd      RiasCrimsonClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RiasCrimsonDiffChange
hi! link DiffDelete   RiasCrimsonDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RiasCrimsonDiffText
hi! link Directory    RiasCrimsonConstantsBold
hi! link ErrorMsg     RiasCrimsonRedInverse
hi! link FoldColumn   RiasCrimsonSubtle
hi! link Folded       RiasCrimsonBoundary
hi! link IncSearch    RiasCrimsonParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RiasCrimsonFgBold
hi! link NonText      RiasCrimsonSubtle
" hi! link Pmenu        RiasCrimsonBgDark
" hi! link PmenuSbar    RiasCrimsonBgDark
hi! link PmenuSel     RiasCrimsonSelection
hi! link PmenuThumb   RiasCrimsonSelection
hi! link Question     RiasCrimsonFgBold
hi! link Search       RiasCrimsonSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RiasCrimsonBoundary
" hi! link TabLineFill  RiasCrimsonBgDarker
hi! link TabLineSel   Normal
hi! link Title        RiasCrimsonClassNameBold
hi! link VertSplit    RiasCrimsonBoundary
hi! link Visual       RiasCrimsonSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RiasCrimsonParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RiasCrimsonRed
  hi! link LspDiagnosticsUnderline RiasCrimsonFgUnderline
  hi! link LspDiagnosticsInformation RiasCrimsonKeyColor
  hi! link LspDiagnosticsHint RiasCrimsonKeyColor
  hi! link LspDiagnosticsError RiasCrimsonError
  hi! link LspDiagnosticsWarning RiasCrimsonParameter
  hi! link LspDiagnosticsUnderlineError RiasCrimsonErrorLine
  hi! link LspDiagnosticsUnderlineHint RiasCrimsonInfoLine
  hi! link LspDiagnosticsUnderlineInformation RiasCrimsonInfoLine
  hi! link LspDiagnosticsUnderlineWarning RiasCrimsonWarnLine
else
  hi! link SpecialKey RiasCrimsonSubtle
endif

hi! link Comment RiasCrimsonComment
hi! link Underlined RiasCrimsonFgUnderline
hi! link Todo RiasCrimsonTodo

hi! link Error RiasCrimsonError
hi! link SpellBad RiasCrimsonErrorLine
hi! link SpellLocal RiasCrimsonWarnLine
hi! link SpellCap RiasCrimsonInfoLine
hi! link SpellRare RiasCrimsonInfoLine

hi! link Constant RiasCrimsonConstants
hi! link String RiasCrimsonStringColor
hi! link Character RiasCrimsonKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RiasCrimsonFg
hi! link Function RiasCrimsonClassName

hi! link Statement RiasCrimsonKeyword
hi! link Conditional RiasCrimsonKeyword
hi! link Repeat RiasCrimsonKeyword
hi! link Label RiasCrimsonKeyword
hi! link Operator RiasCrimsonKeyword
hi! link Keyword RiasCrimsonKeyword
hi! link Exception RiasCrimsonKeyword

hi! link PreProc RiasCrimsonKeyword
hi! link Include RiasCrimsonKeyword
hi! link Define RiasCrimsonKeyword
hi! link Macro RiasCrimsonKeyword
hi! link PreCondit RiasCrimsonKeyword
hi! link StorageClass RiasCrimsonKeyword
hi! link Structure RiasCrimsonKeyword
hi! link Typedef RiasCrimsonKeyword

hi! link Type RiasCrimsonKeyColorItalic

hi! link Delimiter RiasCrimsonFg

hi! link Special RiasCrimsonKeyword
hi! link SpecialComment RiasCrimsonKeyColorItalic
hi! link Tag RiasCrimsonKeyColor
hi! link helpHyperTextJump RiasCrimsonLink
hi! link helpCommand RiasCrimsonConstants
hi! link helpExample RiasCrimsonClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
