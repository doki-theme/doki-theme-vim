" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'zero_two_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:zero_two_light#palette.fg

let s:bglighter = g:zero_two_light#palette.bglighter
let s:bglight   = g:zero_two_light#palette.bglight
let s:bg        = g:zero_two_light#palette.bg
let s:bgdark    = g:zero_two_light#palette.bgdark
let s:bgdarker  = g:zero_two_light#palette.bgdarker

let s:comment   = g:zero_two_light#palette.comment
let s:selection = g:zero_two_light#palette.selection
let s:subtle    = g:zero_two_light#palette.subtle

let s:key_color      = g:zero_two_light#palette.key_color
let s:class_name     = g:zero_two_light#palette.class_name
let s:parameter_color    = g:zero_two_light#palette.parameter_color
let s:keyword_color      = g:zero_two_light#palette.keyword_color
let s:constants_color    = g:zero_two_light#palette.constants_color
let s:red       = g:zero_two_light#palette.red
let s:string_color    = g:zero_two_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:zero_two_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:zero_two_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:zero_two_light_bold')
  let g:zero_two_light_bold = 1
endif

if !exists('g:zero_two_light_italic')
  let g:zero_two_light_italic = 1
endif

if !exists('g:zero_two_light_underline')
  let g:zero_two_light_underline = 1
endif

if !exists('g:zero_two_light_undercurl') && g:zero_two_light_underline != 0
  let g:zero_two_light_undercurl = 1
endif

if !exists('g:zero_two_light_inverse')
  let g:zero_two_light_inverse = 1
endif

if !exists('g:zero_two_light_colorterm')
  let g:zero_two_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:zero_two_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:zero_two_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:zero_two_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:zero_two_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:zero_two_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('ZeroTwoLightBgLight', s:none, s:bglight)
call s:h('ZeroTwoLightBgLighter', s:none, s:bglighter)
call s:h('ZeroTwoLightBgDark', s:none, s:bgdark)
call s:h('ZeroTwoLightBgDarker', s:none, s:bgdarker)

call s:h('ZeroTwoLightFg', s:fg)
call s:h('ZeroTwoLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ZeroTwoLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ZeroTwoLightComment', s:comment)
call s:h('ZeroTwoLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ZeroTwoLightSelection', s:none, s:selection)

call s:h('ZeroTwoLightSubtle', s:subtle)

call s:h('ZeroTwoLightKeyColor', s:key_color)
call s:h('ZeroTwoLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoLightClassName', s:class_name)
call s:h('ZeroTwoLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ZeroTwoLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ZeroTwoLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ZeroTwoLightParameter', s:parameter_color)
call s:h('ZeroTwoLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ZeroTwoLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ZeroTwoLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ZeroTwoLightParameterInverse', s:bg, s:parameter_color)

call s:h('ZeroTwoLightKeyword', s:keyword_color)
call s:h('ZeroTwoLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoLightConstants', s:constants_color)
call s:h('ZeroTwoLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ZeroTwoLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoLightRed', s:red)
call s:h('ZeroTwoLightRedInverse', s:fg, s:red)

call s:h('ZeroTwoLightStringColor', s:string_color)
call s:h('ZeroTwoLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoLightError', s:red, s:none, [], s:red)

call s:h('ZeroTwoLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ZeroTwoLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ZeroTwoLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ZeroTwoLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ZeroTwoLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ZeroTwoLightBoundary', s:comment, s:bgdark)
call s:h('ZeroTwoLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ZeroTwoLightDiffChange', s:parameter_color, s:none)
call s:h('ZeroTwoLightDiffText', s:bg, s:parameter_color)
call s:h('ZeroTwoLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:zero_two_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ZeroTwoLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ZeroTwoLightStringColor
hi! link DiffAdd      ZeroTwoLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ZeroTwoLightDiffChange
hi! link DiffDelete   ZeroTwoLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ZeroTwoLightDiffText
hi! link Directory    ZeroTwoLightConstantsBold
hi! link ErrorMsg     ZeroTwoLightRedInverse
hi! link FoldColumn   ZeroTwoLightSubtle
hi! link Folded       ZeroTwoLightBoundary
hi! link IncSearch    ZeroTwoLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ZeroTwoLightFgBold
hi! link NonText      ZeroTwoLightSubtle
" hi! link Pmenu        ZeroTwoLightBgDark
" hi! link PmenuSbar    ZeroTwoLightBgDark
hi! link PmenuSel     ZeroTwoLightSelection
hi! link PmenuThumb   ZeroTwoLightSelection
hi! link Question     ZeroTwoLightFgBold
hi! link Search       ZeroTwoLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ZeroTwoLightBoundary
" hi! link TabLineFill  ZeroTwoLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        ZeroTwoLightClassNameBold
hi! link VertSplit    ZeroTwoLightBoundary
hi! link Visual       ZeroTwoLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ZeroTwoLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ZeroTwoLightRed
  hi! link LspDiagnosticsUnderline ZeroTwoLightFgUnderline
  hi! link LspDiagnosticsInformation ZeroTwoLightKeyColor
  hi! link LspDiagnosticsHint ZeroTwoLightKeyColor
  hi! link LspDiagnosticsError ZeroTwoLightError
  hi! link LspDiagnosticsWarning ZeroTwoLightParameter
  hi! link LspDiagnosticsUnderlineError ZeroTwoLightErrorLine
  hi! link LspDiagnosticsUnderlineHint ZeroTwoLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation ZeroTwoLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning ZeroTwoLightWarnLine
else
  hi! link SpecialKey ZeroTwoLightSubtle
endif

hi! link Comment ZeroTwoLightComment
hi! link Underlined ZeroTwoLightFgUnderline
hi! link Todo ZeroTwoLightTodo

hi! link Error ZeroTwoLightError
hi! link SpellBad ZeroTwoLightErrorLine
hi! link SpellLocal ZeroTwoLightWarnLine
hi! link SpellCap ZeroTwoLightInfoLine
hi! link SpellRare ZeroTwoLightInfoLine

hi! link Constant ZeroTwoLightConstants
hi! link String ZeroTwoLightStringColor
hi! link Character ZeroTwoLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ZeroTwoLightFg
hi! link Function ZeroTwoLightClassName

hi! link Statement ZeroTwoLightKeyword
hi! link Conditional ZeroTwoLightKeyword
hi! link Repeat ZeroTwoLightKeyword
hi! link Label ZeroTwoLightKeyword
hi! link Operator ZeroTwoLightKeyword
hi! link Keyword ZeroTwoLightKeyword
hi! link Exception ZeroTwoLightKeyword

hi! link PreProc ZeroTwoLightKeyword
hi! link Include ZeroTwoLightKeyword
hi! link Define ZeroTwoLightKeyword
hi! link Macro ZeroTwoLightKeyword
hi! link PreCondit ZeroTwoLightKeyword
hi! link StorageClass ZeroTwoLightKeyword
hi! link Structure ZeroTwoLightKeyword
hi! link Typedef ZeroTwoLightKeyword

hi! link Type ZeroTwoLightKeyColorItalic

hi! link Delimiter ZeroTwoLightFg

hi! link Special ZeroTwoLightKeyword
hi! link SpecialComment ZeroTwoLightKeyColorItalic
hi! link Tag ZeroTwoLightKeyColor
hi! link helpHyperTextJump ZeroTwoLightLink
hi! link helpCommand ZeroTwoLightConstants
hi! link helpExample ZeroTwoLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
