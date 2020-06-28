" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mioda_ibuki_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mioda_ibuki_dark#palette.fg

let s:bglighter = g:mioda_ibuki_dark#palette.bglighter
let s:bglight   = g:mioda_ibuki_dark#palette.bglight
let s:bg        = g:mioda_ibuki_dark#palette.bg
let s:bgdark    = g:mioda_ibuki_dark#palette.bgdark
let s:bgdarker  = g:mioda_ibuki_dark#palette.bgdarker

let s:comment   = g:mioda_ibuki_dark#palette.comment
let s:selection = g:mioda_ibuki_dark#palette.selection
let s:subtle    = g:mioda_ibuki_dark#palette.subtle

let s:key_color      = g:mioda_ibuki_dark#palette.key_color
let s:class_name     = g:mioda_ibuki_dark#palette.class_name
let s:parameter_color    = g:mioda_ibuki_dark#palette.parameter_color
let s:keyword_color      = g:mioda_ibuki_dark#palette.keyword_color
let s:constants_color    = g:mioda_ibuki_dark#palette.constants_color
let s:red       = g:mioda_ibuki_dark#palette.red
let s:string_color    = g:mioda_ibuki_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mioda_ibuki_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mioda_ibuki_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mioda_ibuki_dark_bold')
  let g:mioda_ibuki_dark_bold = 1
endif

if !exists('g:mioda_ibuki_dark_italic')
  let g:mioda_ibuki_dark_italic = 1
endif

if !exists('g:mioda_ibuki_dark_underline')
  let g:mioda_ibuki_dark_underline = 1
endif

if !exists('g:mioda_ibuki_dark_undercurl') && g:mioda_ibuki_dark_underline != 0
  let g:mioda_ibuki_dark_undercurl = 1
endif

if !exists('g:mioda_ibuki_dark_inverse')
  let g:mioda_ibuki_dark_inverse = 1
endif

if !exists('g:mioda_ibuki_dark_colorterm')
  let g:mioda_ibuki_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mioda_ibuki_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mioda_ibuki_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mioda_ibuki_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mioda_ibuki_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mioda_ibuki_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('MiodaIbukiDarkBgLight', s:none, s:bglight)
call s:h('MiodaIbukiDarkBgLighter', s:none, s:bglighter)
call s:h('MiodaIbukiDarkBgDark', s:none, s:bgdark)
call s:h('MiodaIbukiDarkBgDarker', s:none, s:bgdarker)

call s:h('MiodaIbukiDarkFg', s:fg)
call s:h('MiodaIbukiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MiodaIbukiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MiodaIbukiDarkComment', s:comment)
call s:h('MiodaIbukiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MiodaIbukiDarkSelection', s:none, s:selection)

call s:h('MiodaIbukiDarkSubtle', s:subtle)

call s:h('MiodaIbukiDarkKeyColor', s:key_color)
call s:h('MiodaIbukiDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkClassName', s:class_name)
call s:h('MiodaIbukiDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MiodaIbukiDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MiodaIbukiDarkParameter', s:parameter_color)
call s:h('MiodaIbukiDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MiodaIbukiDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MiodaIbukiDarkParameterInverse', s:bg, s:parameter_color)

call s:h('MiodaIbukiDarkKeyword', s:keyword_color)
call s:h('MiodaIbukiDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkConstants', s:constants_color)
call s:h('MiodaIbukiDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MiodaIbukiDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkRed', s:red)
call s:h('MiodaIbukiDarkRedInverse', s:fg, s:red)

call s:h('MiodaIbukiDarkStringColor', s:string_color)
call s:h('MiodaIbukiDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiDarkError', s:red, s:none, [], s:red)

call s:h('MiodaIbukiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MiodaIbukiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MiodaIbukiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MiodaIbukiDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MiodaIbukiDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MiodaIbukiDarkBoundary', s:comment, s:bgdark)
call s:h('MiodaIbukiDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MiodaIbukiDarkDiffChange', s:parameter_color, s:none)
call s:h('MiodaIbukiDarkDiffText', s:bg, s:parameter_color)
call s:h('MiodaIbukiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:mioda_ibuki_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MiodaIbukiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MiodaIbukiDarkStringColor
hi! link DiffAdd      MiodaIbukiDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MiodaIbukiDarkDiffChange
hi! link DiffDelete   MiodaIbukiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MiodaIbukiDarkDiffText
hi! link Directory    MiodaIbukiDarkConstantsBold
hi! link ErrorMsg     MiodaIbukiDarkRedInverse
hi! link FoldColumn   MiodaIbukiDarkSubtle
hi! link Folded       MiodaIbukiDarkBoundary
hi! link IncSearch    MiodaIbukiDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MiodaIbukiDarkFgBold
hi! link NonText      MiodaIbukiDarkSubtle
" hi! link Pmenu        MiodaIbukiDarkBgDark
" hi! link PmenuSbar    MiodaIbukiDarkBgDark
hi! link PmenuSel     MiodaIbukiDarkSelection
hi! link PmenuThumb   MiodaIbukiDarkSelection
hi! link Question     MiodaIbukiDarkFgBold
hi! link Search       MiodaIbukiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MiodaIbukiDarkBoundary
" hi! link TabLineFill  MiodaIbukiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        MiodaIbukiDarkClassNameBold
hi! link VertSplit    MiodaIbukiDarkBoundary
hi! link Visual       MiodaIbukiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MiodaIbukiDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MiodaIbukiDarkRed
  hi! link LspDiagnosticsUnderline MiodaIbukiDarkFgUnderline
  hi! link LspDiagnosticsInformation MiodaIbukiDarkKeyColor
  hi! link LspDiagnosticsHint MiodaIbukiDarkKeyColor
  hi! link LspDiagnosticsError MiodaIbukiDarkError
  hi! link LspDiagnosticsWarning MiodaIbukiDarkParameter
  hi! link LspDiagnosticsUnderlineError MiodaIbukiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint MiodaIbukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation MiodaIbukiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning MiodaIbukiDarkWarnLine
else
  hi! link SpecialKey MiodaIbukiDarkSubtle
endif

hi! link Comment MiodaIbukiDarkComment
hi! link Underlined MiodaIbukiDarkFgUnderline
hi! link Todo MiodaIbukiDarkTodo

hi! link Error MiodaIbukiDarkError
hi! link SpellBad MiodaIbukiDarkErrorLine
hi! link SpellLocal MiodaIbukiDarkWarnLine
hi! link SpellCap MiodaIbukiDarkInfoLine
hi! link SpellRare MiodaIbukiDarkInfoLine

hi! link Constant MiodaIbukiDarkConstants
hi! link String MiodaIbukiDarkStringColor
hi! link Character MiodaIbukiDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MiodaIbukiDarkFg
hi! link Function MiodaIbukiDarkClassName

hi! link Statement MiodaIbukiDarkKeyword
hi! link Conditional MiodaIbukiDarkKeyword
hi! link Repeat MiodaIbukiDarkKeyword
hi! link Label MiodaIbukiDarkKeyword
hi! link Operator MiodaIbukiDarkKeyword
hi! link Keyword MiodaIbukiDarkKeyword
hi! link Exception MiodaIbukiDarkKeyword

hi! link PreProc MiodaIbukiDarkKeyword
hi! link Include MiodaIbukiDarkKeyword
hi! link Define MiodaIbukiDarkKeyword
hi! link Macro MiodaIbukiDarkKeyword
hi! link PreCondit MiodaIbukiDarkKeyword
hi! link StorageClass MiodaIbukiDarkKeyword
hi! link Structure MiodaIbukiDarkKeyword
hi! link Typedef MiodaIbukiDarkKeyword

hi! link Type MiodaIbukiDarkKeyColorItalic

hi! link Delimiter MiodaIbukiDarkFg

hi! link Special MiodaIbukiDarkKeyword
hi! link SpecialComment MiodaIbukiDarkKeyColorItalic
hi! link Tag MiodaIbukiDarkKeyColor
hi! link helpHyperTextJump MiodaIbukiDarkLink
hi! link helpCommand MiodaIbukiDarkConstants
hi! link helpExample MiodaIbukiDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
