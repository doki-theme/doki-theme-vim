" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'chocola'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:chocola#palette.fg

let s:bglighter = g:chocola#palette.bglighter
let s:bglight   = g:chocola#palette.bglight
let s:bg        = g:chocola#palette.bg
let s:bgdark    = g:chocola#palette.bgdark
let s:bgdarker  = g:chocola#palette.bgdarker

let s:comment   = g:chocola#palette.comment
let s:selection = g:chocola#palette.selection
let s:subtle    = g:chocola#palette.subtle

let s:key_color      = g:chocola#palette.key_color
let s:class_name     = g:chocola#palette.class_name
let s:parameter_color    = g:chocola#palette.parameter_color
let s:keyword_color      = g:chocola#palette.keyword_color
let s:constants_color    = g:chocola#palette.constants_color
let s:red       = g:chocola#palette.red
let s:string_color    = g:chocola#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:chocola#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:chocola#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:chocola_bold')
  let g:chocola_bold = 1
endif

if !exists('g:chocola_italic')
  let g:chocola_italic = 1
endif

if !exists('g:chocola_underline')
  let g:chocola_underline = 1
endif

if !exists('g:chocola_undercurl') && g:chocola_underline != 0
  let g:chocola_undercurl = 1
endif

if !exists('g:chocola_inverse')
  let g:chocola_inverse = 1
endif

if !exists('g:chocola_colorterm')
  let g:chocola_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:chocola_bold == 1 ? 'bold' : 0,
      \ 'italic': g:chocola_italic == 1 ? 'italic' : 0,
      \ 'underline': g:chocola_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:chocola_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:chocola_inverse == 1 ? 'inverse' : 0,
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

call s:h('ChocolaBgLight', s:none, s:bglight)
call s:h('ChocolaBgLighter', s:none, s:bglighter)
call s:h('ChocolaBgDark', s:none, s:bgdark)
call s:h('ChocolaBgDarker', s:none, s:bgdarker)

call s:h('ChocolaFg', s:fg)
call s:h('ChocolaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ChocolaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ChocolaComment', s:comment)
call s:h('ChocolaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ChocolaSelection', s:none, s:selection)

call s:h('ChocolaSubtle', s:subtle)

call s:h('ChocolaKeyColor', s:key_color)
call s:h('ChocolaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ChocolaClassName', s:class_name)
call s:h('ChocolaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ChocolaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ChocolaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ChocolaParameter', s:parameter_color)
call s:h('ChocolaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ChocolaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ChocolaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ChocolaParameterInverse', s:bg, s:parameter_color)

call s:h('ChocolaKeyword', s:keyword_color)
call s:h('ChocolaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ChocolaConstants', s:constants_color)
call s:h('ChocolaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ChocolaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ChocolaRed', s:red)
call s:h('ChocolaRedInverse', s:fg, s:red)

call s:h('ChocolaStringColor', s:string_color)
call s:h('ChocolaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ChocolaError', s:red, s:none, [], s:red)

call s:h('ChocolaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ChocolaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ChocolaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ChocolaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ChocolaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ChocolaBoundary', s:comment, s:bgdark)
call s:h('ChocolaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ChocolaDiffChange', s:parameter_color, s:none)
call s:h('ChocolaDiffText', s:bg, s:parameter_color)
call s:h('ChocolaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:chocola_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ChocolaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ChocolaStringColor
hi! link DiffAdd      ChocolaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ChocolaDiffChange
hi! link DiffDelete   ChocolaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ChocolaDiffText
hi! link Directory    ChocolaConstantsBold
hi! link ErrorMsg     ChocolaRedInverse
hi! link FoldColumn   ChocolaSubtle
hi! link Folded       ChocolaBoundary
hi! link IncSearch    ChocolaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ChocolaFgBold
hi! link NonText      ChocolaSubtle
" hi! link Pmenu        ChocolaBgDark
" hi! link PmenuSbar    ChocolaBgDark
hi! link PmenuSel     ChocolaSelection
hi! link PmenuThumb   ChocolaSelection
hi! link Question     ChocolaFgBold
hi! link Search       ChocolaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ChocolaBoundary
" hi! link TabLineFill  ChocolaBgDarker
hi! link TabLineSel   Normal
hi! link Title        ChocolaClassNameBold
hi! link VertSplit    ChocolaBoundary
hi! link Visual       ChocolaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ChocolaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ChocolaRed
  hi! link LspDiagnosticsUnderline ChocolaFgUnderline
  hi! link LspDiagnosticsInformation ChocolaKeyColor
  hi! link LspDiagnosticsHint ChocolaKeyColor
  hi! link LspDiagnosticsError ChocolaError
  hi! link LspDiagnosticsWarning ChocolaParameter
  hi! link LspDiagnosticsUnderlineError ChocolaErrorLine
  hi! link LspDiagnosticsUnderlineHint ChocolaInfoLine
  hi! link LspDiagnosticsUnderlineInformation ChocolaInfoLine
  hi! link LspDiagnosticsUnderlineWarning ChocolaWarnLine
else
  hi! link SpecialKey ChocolaSubtle
endif

hi! link Comment ChocolaComment
hi! link Underlined ChocolaFgUnderline
hi! link Todo ChocolaTodo

hi! link Error ChocolaError
hi! link SpellBad ChocolaErrorLine
hi! link SpellLocal ChocolaWarnLine
hi! link SpellCap ChocolaInfoLine
hi! link SpellRare ChocolaInfoLine

hi! link Constant ChocolaConstants
hi! link String ChocolaStringColor
hi! link Character ChocolaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ChocolaFg
hi! link Function ChocolaClassName

hi! link Statement ChocolaKeyword
hi! link Conditional ChocolaKeyword
hi! link Repeat ChocolaKeyword
hi! link Label ChocolaKeyword
hi! link Operator ChocolaKeyword
hi! link Keyword ChocolaKeyword
hi! link Exception ChocolaKeyword

hi! link PreProc ChocolaKeyword
hi! link Include ChocolaKeyword
hi! link Define ChocolaKeyword
hi! link Macro ChocolaKeyword
hi! link PreCondit ChocolaKeyword
hi! link StorageClass ChocolaKeyword
hi! link Structure ChocolaKeyword
hi! link Typedef ChocolaKeyword

hi! link Type ChocolaKeyColorItalic

hi! link Delimiter ChocolaFg

hi! link Special ChocolaKeyword
hi! link SpecialComment ChocolaKeyColorItalic
hi! link Tag ChocolaKeyColor
hi! link helpHyperTextJump ChocolaLink
hi! link helpCommand ChocolaConstants
hi! link helpExample ChocolaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
