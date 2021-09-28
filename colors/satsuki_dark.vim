" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'satsuki_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:satsuki_dark#palette.fg

let s:bglighter = g:satsuki_dark#palette.bglighter
let s:bglight   = g:satsuki_dark#palette.bglight
let s:bg        = g:satsuki_dark#palette.bg
let s:bgdark    = g:satsuki_dark#palette.bgdark
let s:bgdarker  = g:satsuki_dark#palette.bgdarker

let s:comment   = g:satsuki_dark#palette.comment
let s:selection = g:satsuki_dark#palette.selection
let s:subtle    = g:satsuki_dark#palette.subtle

let s:key_color      = g:satsuki_dark#palette.key_color
let s:class_name     = g:satsuki_dark#palette.class_name
let s:parameter_color    = g:satsuki_dark#palette.parameter_color
let s:keyword_color      = g:satsuki_dark#palette.keyword_color
let s:constants_color    = g:satsuki_dark#palette.constants_color
let s:red       = g:satsuki_dark#palette.red
let s:string_color    = g:satsuki_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:satsuki_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:satsuki_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:satsuki_dark_bold')
  let g:satsuki_dark_bold = 1
endif

if !exists('g:satsuki_dark_italic')
  let g:satsuki_dark_italic = 1
endif

if !exists('g:satsuki_dark_underline')
  let g:satsuki_dark_underline = 1
endif

if !exists('g:satsuki_dark_undercurl') && g:satsuki_dark_underline != 0
  let g:satsuki_dark_undercurl = 1
endif

if !exists('g:satsuki_dark_inverse')
  let g:satsuki_dark_inverse = 1
endif

if !exists('g:satsuki_dark_colorterm')
  let g:satsuki_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:satsuki_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:satsuki_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:satsuki_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:satsuki_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:satsuki_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('SatsukiDarkBgLight', s:none, s:bglight)
call s:h('SatsukiDarkBgLighter', s:none, s:bglighter)
call s:h('SatsukiDarkBgDark', s:none, s:bgdark)
call s:h('SatsukiDarkBgDarker', s:none, s:bgdarker)

call s:h('SatsukiDarkFg', s:fg)
call s:h('SatsukiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SatsukiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SatsukiDarkComment', s:comment)
call s:h('SatsukiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SatsukiDarkSelection', s:none, s:selection)

call s:h('SatsukiDarkSubtle', s:subtle)

call s:h('SatsukiDarkKeyColor', s:key_color)
call s:h('SatsukiDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SatsukiDarkClassName', s:class_name)
call s:h('SatsukiDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SatsukiDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SatsukiDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SatsukiDarkParameter', s:parameter_color)
call s:h('SatsukiDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SatsukiDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SatsukiDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SatsukiDarkParameterInverse', s:bg, s:parameter_color)

call s:h('SatsukiDarkKeyword', s:keyword_color)
call s:h('SatsukiDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SatsukiDarkConstants', s:constants_color)
call s:h('SatsukiDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SatsukiDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SatsukiDarkRed', s:red)
call s:h('SatsukiDarkRedInverse', s:fg, s:red)

call s:h('SatsukiDarkStringColor', s:string_color)
call s:h('SatsukiDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SatsukiDarkError', s:red, s:none, [], s:red)

call s:h('SatsukiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SatsukiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SatsukiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SatsukiDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SatsukiDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SatsukiDarkBoundary', s:comment, s:bgdark)
call s:h('SatsukiDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SatsukiDarkDiffChange', s:parameter_color, s:none)
call s:h('SatsukiDarkDiffText', s:bg, s:parameter_color)
call s:h('SatsukiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:satsuki_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SatsukiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SatsukiDarkStringColor
hi! link DiffAdd      SatsukiDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SatsukiDarkDiffChange
hi! link DiffDelete   SatsukiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SatsukiDarkDiffText
hi! link Directory    SatsukiDarkConstantsBold
hi! link ErrorMsg     SatsukiDarkRedInverse
hi! link FoldColumn   SatsukiDarkSubtle
hi! link Folded       SatsukiDarkBoundary
hi! link IncSearch    SatsukiDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SatsukiDarkFgBold
hi! link NonText      SatsukiDarkSubtle
" hi! link Pmenu        SatsukiDarkBgDark
" hi! link PmenuSbar    SatsukiDarkBgDark
hi! link PmenuSel     SatsukiDarkSelection
hi! link PmenuThumb   SatsukiDarkSelection
hi! link Question     SatsukiDarkFgBold
hi! link Search       SatsukiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SatsukiDarkBoundary
" hi! link TabLineFill  SatsukiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        SatsukiDarkClassNameBold
hi! link VertSplit    SatsukiDarkBoundary
hi! link Visual       SatsukiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SatsukiDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SatsukiDarkRed
  hi! link LspDiagnosticsUnderline SatsukiDarkFgUnderline
  hi! link LspDiagnosticsInformation SatsukiDarkKeyColor
  hi! link LspDiagnosticsHint SatsukiDarkKeyColor
  hi! link LspDiagnosticsError SatsukiDarkError
  hi! link LspDiagnosticsWarning SatsukiDarkParameter
  hi! link LspDiagnosticsUnderlineError SatsukiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint SatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation SatsukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning SatsukiDarkWarnLine
else
  hi! link SpecialKey SatsukiDarkSubtle
endif

hi! link Comment SatsukiDarkComment
hi! link Underlined SatsukiDarkFgUnderline
hi! link Todo SatsukiDarkTodo

hi! link Error SatsukiDarkError
hi! link SpellBad SatsukiDarkErrorLine
hi! link SpellLocal SatsukiDarkWarnLine
hi! link SpellCap SatsukiDarkInfoLine
hi! link SpellRare SatsukiDarkInfoLine

hi! link Constant SatsukiDarkConstants
hi! link String SatsukiDarkStringColor
hi! link Character SatsukiDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SatsukiDarkFg
hi! link Function SatsukiDarkClassName

hi! link Statement SatsukiDarkKeyword
hi! link Conditional SatsukiDarkKeyword
hi! link Repeat SatsukiDarkKeyword
hi! link Label SatsukiDarkKeyword
hi! link Operator SatsukiDarkKeyword
hi! link Keyword SatsukiDarkKeyword
hi! link Exception SatsukiDarkKeyword

hi! link PreProc SatsukiDarkKeyword
hi! link Include SatsukiDarkKeyword
hi! link Define SatsukiDarkKeyword
hi! link Macro SatsukiDarkKeyword
hi! link PreCondit SatsukiDarkKeyword
hi! link StorageClass SatsukiDarkKeyword
hi! link Structure SatsukiDarkKeyword
hi! link Typedef SatsukiDarkKeyword

hi! link Type SatsukiDarkKeyColorItalic

hi! link Delimiter SatsukiDarkFg

hi! link Special SatsukiDarkKeyword
hi! link SpecialComment SatsukiDarkKeyColorItalic
hi! link Tag SatsukiDarkKeyColor
hi! link helpHyperTextJump SatsukiDarkLink
hi! link helpCommand SatsukiDarkConstants
hi! link helpExample SatsukiDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
