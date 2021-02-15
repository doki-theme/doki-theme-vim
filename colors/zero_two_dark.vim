" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'zero_two_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:zero_two_dark#palette.fg

let s:bglighter = g:zero_two_dark#palette.bglighter
let s:bglight   = g:zero_two_dark#palette.bglight
let s:bg        = g:zero_two_dark#palette.bg
let s:bgdark    = g:zero_two_dark#palette.bgdark
let s:bgdarker  = g:zero_two_dark#palette.bgdarker

let s:comment   = g:zero_two_dark#palette.comment
let s:selection = g:zero_two_dark#palette.selection
let s:subtle    = g:zero_two_dark#palette.subtle

let s:key_color      = g:zero_two_dark#palette.key_color
let s:class_name     = g:zero_two_dark#palette.class_name
let s:parameter_color    = g:zero_two_dark#palette.parameter_color
let s:keyword_color      = g:zero_two_dark#palette.keyword_color
let s:constants_color    = g:zero_two_dark#palette.constants_color
let s:red       = g:zero_two_dark#palette.red
let s:string_color    = g:zero_two_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:zero_two_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:zero_two_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:zero_two_dark_bold')
  let g:zero_two_dark_bold = 1
endif

if !exists('g:zero_two_dark_italic')
  let g:zero_two_dark_italic = 1
endif

if !exists('g:zero_two_dark_underline')
  let g:zero_two_dark_underline = 1
endif

if !exists('g:zero_two_dark_undercurl') && g:zero_two_dark_underline != 0
  let g:zero_two_dark_undercurl = 1
endif

if !exists('g:zero_two_dark_inverse')
  let g:zero_two_dark_inverse = 1
endif

if !exists('g:zero_two_dark_colorterm')
  let g:zero_two_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:zero_two_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:zero_two_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:zero_two_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:zero_two_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:zero_two_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('ZeroTwoDarkBgLight', s:none, s:bglight)
call s:h('ZeroTwoDarkBgLighter', s:none, s:bglighter)
call s:h('ZeroTwoDarkBgDark', s:none, s:bgdark)
call s:h('ZeroTwoDarkBgDarker', s:none, s:bgdarker)

call s:h('ZeroTwoDarkFg', s:fg)
call s:h('ZeroTwoDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ZeroTwoDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ZeroTwoDarkComment', s:comment)
call s:h('ZeroTwoDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ZeroTwoDarkSelection', s:none, s:selection)

call s:h('ZeroTwoDarkSubtle', s:subtle)

call s:h('ZeroTwoDarkKeyColor', s:key_color)
call s:h('ZeroTwoDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoDarkClassName', s:class_name)
call s:h('ZeroTwoDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ZeroTwoDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ZeroTwoDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ZeroTwoDarkParameter', s:parameter_color)
call s:h('ZeroTwoDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ZeroTwoDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ZeroTwoDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ZeroTwoDarkParameterInverse', s:bg, s:parameter_color)

call s:h('ZeroTwoDarkKeyword', s:keyword_color)
call s:h('ZeroTwoDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoDarkConstants', s:constants_color)
call s:h('ZeroTwoDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ZeroTwoDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoDarkRed', s:red)
call s:h('ZeroTwoDarkRedInverse', s:fg, s:red)

call s:h('ZeroTwoDarkStringColor', s:string_color)
call s:h('ZeroTwoDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ZeroTwoDarkError', s:red, s:none, [], s:red)

call s:h('ZeroTwoDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ZeroTwoDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ZeroTwoDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ZeroTwoDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ZeroTwoDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ZeroTwoDarkBoundary', s:comment, s:bgdark)
call s:h('ZeroTwoDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ZeroTwoDarkDiffChange', s:parameter_color, s:none)
call s:h('ZeroTwoDarkDiffText', s:bg, s:parameter_color)
call s:h('ZeroTwoDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:zero_two_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ZeroTwoDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ZeroTwoDarkStringColor
hi! link DiffAdd      ZeroTwoDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ZeroTwoDarkDiffChange
hi! link DiffDelete   ZeroTwoDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ZeroTwoDarkDiffText
hi! link Directory    ZeroTwoDarkConstantsBold
hi! link ErrorMsg     ZeroTwoDarkRedInverse
hi! link FoldColumn   ZeroTwoDarkSubtle
hi! link Folded       ZeroTwoDarkBoundary
hi! link IncSearch    ZeroTwoDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ZeroTwoDarkFgBold
hi! link NonText      ZeroTwoDarkSubtle
" hi! link Pmenu        ZeroTwoDarkBgDark
" hi! link PmenuSbar    ZeroTwoDarkBgDark
hi! link PmenuSel     ZeroTwoDarkSelection
hi! link PmenuThumb   ZeroTwoDarkSelection
hi! link Question     ZeroTwoDarkFgBold
hi! link Search       ZeroTwoDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ZeroTwoDarkBoundary
" hi! link TabLineFill  ZeroTwoDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        ZeroTwoDarkClassNameBold
hi! link VertSplit    ZeroTwoDarkBoundary
hi! link Visual       ZeroTwoDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ZeroTwoDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ZeroTwoDarkRed
  hi! link LspDiagnosticsUnderline ZeroTwoDarkFgUnderline
  hi! link LspDiagnosticsInformation ZeroTwoDarkKeyColor
  hi! link LspDiagnosticsHint ZeroTwoDarkKeyColor
  hi! link LspDiagnosticsError ZeroTwoDarkError
  hi! link LspDiagnosticsWarning ZeroTwoDarkParameter
  hi! link LspDiagnosticsUnderlineError ZeroTwoDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint ZeroTwoDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation ZeroTwoDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning ZeroTwoDarkWarnLine
else
  hi! link SpecialKey ZeroTwoDarkSubtle
endif

hi! link Comment ZeroTwoDarkComment
hi! link Underlined ZeroTwoDarkFgUnderline
hi! link Todo ZeroTwoDarkTodo

hi! link Error ZeroTwoDarkError
hi! link SpellBad ZeroTwoDarkErrorLine
hi! link SpellLocal ZeroTwoDarkWarnLine
hi! link SpellCap ZeroTwoDarkInfoLine
hi! link SpellRare ZeroTwoDarkInfoLine

hi! link Constant ZeroTwoDarkConstants
hi! link String ZeroTwoDarkStringColor
hi! link Character ZeroTwoDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ZeroTwoDarkFg
hi! link Function ZeroTwoDarkClassName

hi! link Statement ZeroTwoDarkKeyword
hi! link Conditional ZeroTwoDarkKeyword
hi! link Repeat ZeroTwoDarkKeyword
hi! link Label ZeroTwoDarkKeyword
hi! link Operator ZeroTwoDarkKeyword
hi! link Keyword ZeroTwoDarkKeyword
hi! link Exception ZeroTwoDarkKeyword

hi! link PreProc ZeroTwoDarkKeyword
hi! link Include ZeroTwoDarkKeyword
hi! link Define ZeroTwoDarkKeyword
hi! link Macro ZeroTwoDarkKeyword
hi! link PreCondit ZeroTwoDarkKeyword
hi! link StorageClass ZeroTwoDarkKeyword
hi! link Structure ZeroTwoDarkKeyword
hi! link Typedef ZeroTwoDarkKeyword

hi! link Type ZeroTwoDarkKeyColorItalic

hi! link Delimiter ZeroTwoDarkFg

hi! link Special ZeroTwoDarkKeyword
hi! link SpecialComment ZeroTwoDarkKeyColorItalic
hi! link Tag ZeroTwoDarkKeyColor
hi! link helpHyperTextJump ZeroTwoDarkLink
hi! link helpCommand ZeroTwoDarkConstants
hi! link helpExample ZeroTwoDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
