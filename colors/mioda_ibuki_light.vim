" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mioda_ibuki_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mioda_ibuki_light#palette.fg

let s:bglighter = g:mioda_ibuki_light#palette.bglighter
let s:bglight   = g:mioda_ibuki_light#palette.bglight
let s:bg        = g:mioda_ibuki_light#palette.bg
let s:bgdark    = g:mioda_ibuki_light#palette.bgdark
let s:bgdarker  = g:mioda_ibuki_light#palette.bgdarker

let s:comment   = g:mioda_ibuki_light#palette.comment
let s:selection = g:mioda_ibuki_light#palette.selection
let s:subtle    = g:mioda_ibuki_light#palette.subtle

let s:key_color      = g:mioda_ibuki_light#palette.key_color
let s:class_name     = g:mioda_ibuki_light#palette.class_name
let s:parameter_color    = g:mioda_ibuki_light#palette.parameter_color
let s:keyword_color      = g:mioda_ibuki_light#palette.keyword_color
let s:constants_color    = g:mioda_ibuki_light#palette.constants_color
let s:red       = g:mioda_ibuki_light#palette.red
let s:string_color    = g:mioda_ibuki_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mioda_ibuki_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mioda_ibuki_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mioda_ibuki_light_bold')
  let g:mioda_ibuki_light_bold = 1
endif

if !exists('g:mioda_ibuki_light_italic')
  let g:mioda_ibuki_light_italic = 1
endif

if !exists('g:mioda_ibuki_light_underline')
  let g:mioda_ibuki_light_underline = 1
endif

if !exists('g:mioda_ibuki_light_undercurl') && g:mioda_ibuki_light_underline != 0
  let g:mioda_ibuki_light_undercurl = 1
endif

if !exists('g:mioda_ibuki_light_inverse')
  let g:mioda_ibuki_light_inverse = 1
endif

if !exists('g:mioda_ibuki_light_colorterm')
  let g:mioda_ibuki_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mioda_ibuki_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mioda_ibuki_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mioda_ibuki_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mioda_ibuki_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mioda_ibuki_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MiodaIbukiLightBgLight', s:none, s:bglight)
call s:h('MiodaIbukiLightBgLighter', s:none, s:bglighter)
call s:h('MiodaIbukiLightBgDark', s:none, s:bgdark)
call s:h('MiodaIbukiLightBgDarker', s:none, s:bgdarker)

call s:h('MiodaIbukiLightFg', s:fg)
call s:h('MiodaIbukiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MiodaIbukiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MiodaIbukiLightComment', s:comment)
call s:h('MiodaIbukiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MiodaIbukiLightSelection', s:none, s:selection)

call s:h('MiodaIbukiLightSubtle', s:subtle)

call s:h('MiodaIbukiLightKeyColor', s:key_color)
call s:h('MiodaIbukiLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightClassName', s:class_name)
call s:h('MiodaIbukiLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MiodaIbukiLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MiodaIbukiLightParameter', s:parameter_color)
call s:h('MiodaIbukiLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MiodaIbukiLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MiodaIbukiLightParameterInverse', s:bg, s:parameter_color)

call s:h('MiodaIbukiLightKeyword', s:keyword_color)
call s:h('MiodaIbukiLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightConstants', s:constants_color)
call s:h('MiodaIbukiLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MiodaIbukiLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightRed', s:red)
call s:h('MiodaIbukiLightRedInverse', s:fg, s:red)

call s:h('MiodaIbukiLightStringColor', s:string_color)
call s:h('MiodaIbukiLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MiodaIbukiLightError', s:red, s:none, [], s:red)

call s:h('MiodaIbukiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MiodaIbukiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MiodaIbukiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MiodaIbukiLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MiodaIbukiLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MiodaIbukiLightBoundary', s:comment, s:bgdark)
call s:h('MiodaIbukiLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MiodaIbukiLightDiffChange', s:parameter_color, s:none)
call s:h('MiodaIbukiLightDiffText', s:bg, s:parameter_color)
call s:h('MiodaIbukiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:mioda_ibuki_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MiodaIbukiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MiodaIbukiLightStringColor
hi! link DiffAdd      MiodaIbukiLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MiodaIbukiLightDiffChange
hi! link DiffDelete   MiodaIbukiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MiodaIbukiLightDiffText
hi! link Directory    MiodaIbukiLightConstantsBold
hi! link ErrorMsg     MiodaIbukiLightRedInverse
hi! link FoldColumn   MiodaIbukiLightSubtle
hi! link Folded       MiodaIbukiLightBoundary
hi! link IncSearch    MiodaIbukiLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MiodaIbukiLightFgBold
hi! link NonText      MiodaIbukiLightSubtle
" hi! link Pmenu        MiodaIbukiLightBgDark
" hi! link PmenuSbar    MiodaIbukiLightBgDark
hi! link PmenuSel     MiodaIbukiLightSelection
hi! link PmenuThumb   MiodaIbukiLightSelection
hi! link Question     MiodaIbukiLightFgBold
hi! link Search       MiodaIbukiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MiodaIbukiLightBoundary
" hi! link TabLineFill  MiodaIbukiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MiodaIbukiLightClassNameBold
hi! link VertSplit    MiodaIbukiLightBoundary
hi! link Visual       MiodaIbukiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MiodaIbukiLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MiodaIbukiLightRed
  hi! link LspDiagnosticsUnderline MiodaIbukiLightFgUnderline
  hi! link LspDiagnosticsInformation MiodaIbukiLightKeyColor
  hi! link LspDiagnosticsHint MiodaIbukiLightKeyColor
  hi! link LspDiagnosticsError MiodaIbukiLightError
  hi! link LspDiagnosticsWarning MiodaIbukiLightParameter
  hi! link LspDiagnosticsUnderlineError MiodaIbukiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MiodaIbukiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MiodaIbukiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MiodaIbukiLightWarnLine
else
  hi! link SpecialKey MiodaIbukiLightSubtle
endif

hi! link Comment MiodaIbukiLightComment
hi! link Underlined MiodaIbukiLightFgUnderline
hi! link Todo MiodaIbukiLightTodo

hi! link Error MiodaIbukiLightError
hi! link SpellBad MiodaIbukiLightErrorLine
hi! link SpellLocal MiodaIbukiLightWarnLine
hi! link SpellCap MiodaIbukiLightInfoLine
hi! link SpellRare MiodaIbukiLightInfoLine

hi! link Constant MiodaIbukiLightConstants
hi! link String MiodaIbukiLightStringColor
hi! link Character MiodaIbukiLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MiodaIbukiLightFg
hi! link Function MiodaIbukiLightClassName

hi! link Statement MiodaIbukiLightKeyword
hi! link Conditional MiodaIbukiLightKeyword
hi! link Repeat MiodaIbukiLightKeyword
hi! link Label MiodaIbukiLightKeyword
hi! link Operator MiodaIbukiLightKeyword
hi! link Keyword MiodaIbukiLightKeyword
hi! link Exception MiodaIbukiLightKeyword

hi! link PreProc MiodaIbukiLightKeyword
hi! link Include MiodaIbukiLightKeyword
hi! link Define MiodaIbukiLightKeyword
hi! link Macro MiodaIbukiLightKeyword
hi! link PreCondit MiodaIbukiLightKeyword
hi! link StorageClass MiodaIbukiLightKeyword
hi! link Structure MiodaIbukiLightKeyword
hi! link Typedef MiodaIbukiLightKeyword

hi! link Type MiodaIbukiLightKeyColorItalic

hi! link Delimiter MiodaIbukiLightFg

hi! link Special MiodaIbukiLightKeyword
hi! link SpecialComment MiodaIbukiLightKeyColorItalic
hi! link Tag MiodaIbukiLightKeyColor
hi! link helpHyperTextJump MiodaIbukiLightLink
hi! link helpCommand MiodaIbukiLightConstants
hi! link helpExample MiodaIbukiLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
