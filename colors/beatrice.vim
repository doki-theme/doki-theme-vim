" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'beatrice'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:beatrice#palette.fg

let s:bglighter = g:beatrice#palette.bglighter
let s:bglight   = g:beatrice#palette.bglight
let s:bg        = g:beatrice#palette.bg
let s:bgdark    = g:beatrice#palette.bgdark
let s:bgdarker  = g:beatrice#palette.bgdarker

let s:comment   = g:beatrice#palette.comment
let s:selection = g:beatrice#palette.selection
let s:subtle    = g:beatrice#palette.subtle

let s:key_color      = g:beatrice#palette.key_color
let s:class_name     = g:beatrice#palette.class_name
let s:parameter_color    = g:beatrice#palette.parameter_color
let s:keyword_color      = g:beatrice#palette.keyword_color
let s:constants_color    = g:beatrice#palette.constants_color
let s:red       = g:beatrice#palette.red
let s:string_color    = g:beatrice#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:beatrice#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:beatrice#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:beatrice_bold')
  let g:beatrice_bold = 1
endif

if !exists('g:beatrice_italic')
  let g:beatrice_italic = 1
endif

if !exists('g:beatrice_underline')
  let g:beatrice_underline = 1
endif

if !exists('g:beatrice_undercurl') && g:beatrice_underline != 0
  let g:beatrice_undercurl = 1
endif

if !exists('g:beatrice_inverse')
  let g:beatrice_inverse = 1
endif

if !exists('g:beatrice_colorterm')
  let g:beatrice_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:beatrice_bold == 1 ? 'bold' : 0,
      \ 'italic': g:beatrice_italic == 1 ? 'italic' : 0,
      \ 'underline': g:beatrice_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:beatrice_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:beatrice_inverse == 1 ? 'inverse' : 0,
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

call s:h('BeatriceBgLight', s:none, s:bglight)
call s:h('BeatriceBgLighter', s:none, s:bglighter)
call s:h('BeatriceBgDark', s:none, s:bgdark)
call s:h('BeatriceBgDarker', s:none, s:bgdarker)

call s:h('BeatriceFg', s:fg)
call s:h('BeatriceFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('BeatriceFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('BeatriceComment', s:comment)
call s:h('BeatriceCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('BeatriceSelection', s:none, s:selection)

call s:h('BeatriceSubtle', s:subtle)

call s:h('BeatriceKeyColor', s:key_color)
call s:h('BeatriceKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('BeatriceClassName', s:class_name)
call s:h('BeatriceClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('BeatriceClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('BeatriceClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('BeatriceParameter', s:parameter_color)
call s:h('BeatriceParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('BeatriceParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('BeatriceParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('BeatriceParameterInverse', s:bg, s:parameter_color)

call s:h('BeatriceKeyword', s:keyword_color)
call s:h('BeatriceKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('BeatriceConstants', s:constants_color)
call s:h('BeatriceConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('BeatriceConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('BeatriceRed', s:red)
call s:h('BeatriceRedInverse', s:fg, s:red)

call s:h('BeatriceStringColor', s:string_color)
call s:h('BeatriceStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('BeatriceError', s:red, s:none, [], s:red)

call s:h('BeatriceErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('BeatriceWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('BeatriceInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('BeatriceTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('BeatriceSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('BeatriceBoundary', s:comment, s:bgdark)
call s:h('BeatriceLink', s:key_color, s:none, [s:attrs.underline])

call s:h('BeatriceDiffChange', s:parameter_color, s:none)
call s:h('BeatriceDiffText', s:bg, s:parameter_color)
call s:h('BeatriceDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:beatrice_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  BeatriceBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr BeatriceStringColor
hi! link DiffAdd      BeatriceClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   BeatriceDiffChange
hi! link DiffDelete   BeatriceDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     BeatriceDiffText
hi! link Directory    BeatriceConstantsBold
hi! link ErrorMsg     BeatriceRedInverse
hi! link FoldColumn   BeatriceSubtle
hi! link Folded       BeatriceBoundary
hi! link IncSearch    BeatriceParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      BeatriceFgBold
hi! link NonText      BeatriceSubtle
" hi! link Pmenu        BeatriceBgDark
" hi! link PmenuSbar    BeatriceBgDark
hi! link PmenuSel     BeatriceSelection
hi! link PmenuThumb   BeatriceSelection
hi! link Question     BeatriceFgBold
hi! link Search       BeatriceSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      BeatriceBoundary
" hi! link TabLineFill  BeatriceBgDarker
hi! link TabLineSel   Normal
hi! link Title        BeatriceClassNameBold
hi! link VertSplit    BeatriceBoundary
hi! link Visual       BeatriceSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   BeatriceParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey BeatriceRed
  hi! link LspDiagnosticsUnderline BeatriceFgUnderline
  hi! link LspDiagnosticsInformation BeatriceKeyColor
  hi! link LspDiagnosticsHint BeatriceKeyColor
  hi! link LspDiagnosticsError BeatriceError
  hi! link LspDiagnosticsWarning BeatriceParameter
  hi! link LspDiagnosticsUnderlineError BeatriceErrorLine
  hi! link LspDiagnosticsUnderlineHint BeatriceInfoLine
  hi! link LspDiagnosticsUnderlineInformation BeatriceInfoLine
  hi! link LspDiagnosticsUnderlineWarning BeatriceWarnLine
else
  hi! link SpecialKey BeatriceSubtle
endif

hi! link Comment BeatriceComment
hi! link Underlined BeatriceFgUnderline
hi! link Todo BeatriceTodo

hi! link Error BeatriceError
hi! link SpellBad BeatriceErrorLine
hi! link SpellLocal BeatriceWarnLine
hi! link SpellCap BeatriceInfoLine
hi! link SpellRare BeatriceInfoLine

hi! link Constant BeatriceConstants
hi! link String BeatriceStringColor
hi! link Character BeatriceKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier BeatriceFg
hi! link Function BeatriceClassName

hi! link Statement BeatriceKeyword
hi! link Conditional BeatriceKeyword
hi! link Repeat BeatriceKeyword
hi! link Label BeatriceKeyword
hi! link Operator BeatriceKeyword
hi! link Keyword BeatriceKeyword
hi! link Exception BeatriceKeyword

hi! link PreProc BeatriceKeyword
hi! link Include BeatriceKeyword
hi! link Define BeatriceKeyword
hi! link Macro BeatriceKeyword
hi! link PreCondit BeatriceKeyword
hi! link StorageClass BeatriceKeyword
hi! link Structure BeatriceKeyword
hi! link Typedef BeatriceKeyword

hi! link Type BeatriceKeyColorItalic

hi! link Delimiter BeatriceFg

hi! link Special BeatriceKeyword
hi! link SpecialComment BeatriceKeyColorItalic
hi! link Tag BeatriceKeyColor
hi! link helpHyperTextJump BeatriceLink
hi! link helpCommand BeatriceConstants
hi! link helpExample BeatriceClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
