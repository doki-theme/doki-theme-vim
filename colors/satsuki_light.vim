" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'satsuki_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:satsuki_light#palette.fg

let s:bglighter = g:satsuki_light#palette.bglighter
let s:bglight   = g:satsuki_light#palette.bglight
let s:bg        = g:satsuki_light#palette.bg
let s:bgdark    = g:satsuki_light#palette.bgdark
let s:bgdarker  = g:satsuki_light#palette.bgdarker

let s:comment   = g:satsuki_light#palette.comment
let s:selection = g:satsuki_light#palette.selection
let s:subtle    = g:satsuki_light#palette.subtle

let s:key_color      = g:satsuki_light#palette.key_color
let s:class_name     = g:satsuki_light#palette.class_name
let s:parameter_color    = g:satsuki_light#palette.parameter_color
let s:keyword_color      = g:satsuki_light#palette.keyword_color
let s:constants_color    = g:satsuki_light#palette.constants_color
let s:red       = g:satsuki_light#palette.red
let s:string_color    = g:satsuki_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:satsuki_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:satsuki_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:satsuki_light_bold')
  let g:satsuki_light_bold = 1
endif

if !exists('g:satsuki_light_italic')
  let g:satsuki_light_italic = 1
endif

if !exists('g:satsuki_light_underline')
  let g:satsuki_light_underline = 1
endif

if !exists('g:satsuki_light_undercurl') && g:satsuki_light_underline != 0
  let g:satsuki_light_undercurl = 1
endif

if !exists('g:satsuki_light_inverse')
  let g:satsuki_light_inverse = 1
endif

if !exists('g:satsuki_light_colorterm')
  let g:satsuki_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:satsuki_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:satsuki_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:satsuki_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:satsuki_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:satsuki_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('SatsukiLightBgLight', s:none, s:bglight)
call s:h('SatsukiLightBgLighter', s:none, s:bglighter)
call s:h('SatsukiLightBgDark', s:none, s:bgdark)
call s:h('SatsukiLightBgDarker', s:none, s:bgdarker)

call s:h('SatsukiLightFg', s:fg)
call s:h('SatsukiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('SatsukiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('SatsukiLightComment', s:comment)
call s:h('SatsukiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('SatsukiLightSelection', s:none, s:selection)

call s:h('SatsukiLightSubtle', s:subtle)

call s:h('SatsukiLightKeyColor', s:key_color)
call s:h('SatsukiLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('SatsukiLightClassName', s:class_name)
call s:h('SatsukiLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('SatsukiLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('SatsukiLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('SatsukiLightParameter', s:parameter_color)
call s:h('SatsukiLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('SatsukiLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('SatsukiLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('SatsukiLightParameterInverse', s:bg, s:parameter_color)

call s:h('SatsukiLightKeyword', s:keyword_color)
call s:h('SatsukiLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('SatsukiLightConstants', s:constants_color)
call s:h('SatsukiLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('SatsukiLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('SatsukiLightRed', s:red)
call s:h('SatsukiLightRedInverse', s:fg, s:red)

call s:h('SatsukiLightStringColor', s:string_color)
call s:h('SatsukiLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('SatsukiLightError', s:red, s:none, [], s:red)

call s:h('SatsukiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('SatsukiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('SatsukiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('SatsukiLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('SatsukiLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('SatsukiLightBoundary', s:comment, s:bgdark)
call s:h('SatsukiLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('SatsukiLightDiffChange', s:parameter_color, s:none)
call s:h('SatsukiLightDiffText', s:bg, s:parameter_color)
call s:h('SatsukiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:satsuki_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  SatsukiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr SatsukiLightStringColor
hi! link DiffAdd      SatsukiLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   SatsukiLightDiffChange
hi! link DiffDelete   SatsukiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     SatsukiLightDiffText
hi! link Directory    SatsukiLightConstantsBold
hi! link ErrorMsg     SatsukiLightRedInverse
hi! link FoldColumn   SatsukiLightSubtle
hi! link Folded       SatsukiLightBoundary
hi! link IncSearch    SatsukiLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      SatsukiLightFgBold
hi! link NonText      SatsukiLightSubtle
" hi! link Pmenu        SatsukiLightBgDark
" hi! link PmenuSbar    SatsukiLightBgDark
hi! link PmenuSel     SatsukiLightSelection
hi! link PmenuThumb   SatsukiLightSelection
hi! link Question     SatsukiLightFgBold
hi! link Search       SatsukiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      SatsukiLightBoundary
" hi! link TabLineFill  SatsukiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        SatsukiLightClassNameBold
hi! link VertSplit    SatsukiLightBoundary
hi! link Visual       SatsukiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   SatsukiLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey SatsukiLightRed
  hi! link LspDiagnosticsUnderline SatsukiLightFgUnderline
  hi! link LspDiagnosticsInformation SatsukiLightKeyColor
  hi! link LspDiagnosticsHint SatsukiLightKeyColor
  hi! link LspDiagnosticsError SatsukiLightError
  hi! link LspDiagnosticsWarning SatsukiLightParameter
  hi! link LspDiagnosticsUnderlineError SatsukiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint SatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation SatsukiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning SatsukiLightWarnLine
else
  hi! link SpecialKey SatsukiLightSubtle
endif

hi! link Comment SatsukiLightComment
hi! link Underlined SatsukiLightFgUnderline
hi! link Todo SatsukiLightTodo

hi! link Error SatsukiLightError
hi! link SpellBad SatsukiLightErrorLine
hi! link SpellLocal SatsukiLightWarnLine
hi! link SpellCap SatsukiLightInfoLine
hi! link SpellRare SatsukiLightInfoLine

hi! link Constant SatsukiLightConstants
hi! link String SatsukiLightStringColor
hi! link Character SatsukiLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier SatsukiLightFg
hi! link Function SatsukiLightClassName

hi! link Statement SatsukiLightKeyword
hi! link Conditional SatsukiLightKeyword
hi! link Repeat SatsukiLightKeyword
hi! link Label SatsukiLightKeyword
hi! link Operator SatsukiLightKeyword
hi! link Keyword SatsukiLightKeyword
hi! link Exception SatsukiLightKeyword

hi! link PreProc SatsukiLightKeyword
hi! link Include SatsukiLightKeyword
hi! link Define SatsukiLightKeyword
hi! link Macro SatsukiLightKeyword
hi! link PreCondit SatsukiLightKeyword
hi! link StorageClass SatsukiLightKeyword
hi! link Structure SatsukiLightKeyword
hi! link Typedef SatsukiLightKeyword

hi! link Type SatsukiLightKeyColorItalic

hi! link Delimiter SatsukiLightFg

hi! link Special SatsukiLightKeyword
hi! link SpecialComment SatsukiLightKeyColorItalic
hi! link Tag SatsukiLightKeyColor
hi! link helpHyperTextJump SatsukiLightLink
hi! link helpCommand SatsukiLightConstants
hi! link helpExample SatsukiLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
