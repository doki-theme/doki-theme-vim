" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'christmas_chocola'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:christmas_chocola#palette.fg

let s:bglighter = g:christmas_chocola#palette.bglighter
let s:bglight   = g:christmas_chocola#palette.bglight
let s:bg        = g:christmas_chocola#palette.bg
let s:bgdark    = g:christmas_chocola#palette.bgdark
let s:bgdarker  = g:christmas_chocola#palette.bgdarker

let s:comment   = g:christmas_chocola#palette.comment
let s:selection = g:christmas_chocola#palette.selection
let s:subtle    = g:christmas_chocola#palette.subtle

let s:key_color      = g:christmas_chocola#palette.key_color
let s:class_name     = g:christmas_chocola#palette.class_name
let s:parameter_color    = g:christmas_chocola#palette.parameter_color
let s:keyword_color      = g:christmas_chocola#palette.keyword_color
let s:constants_color    = g:christmas_chocola#palette.constants_color
let s:red       = g:christmas_chocola#palette.red
let s:string_color    = g:christmas_chocola#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:christmas_chocola#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:christmas_chocola#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:christmas_chocola_bold')
  let g:christmas_chocola_bold = 1
endif

if !exists('g:christmas_chocola_italic')
  let g:christmas_chocola_italic = 1
endif

if !exists('g:christmas_chocola_underline')
  let g:christmas_chocola_underline = 1
endif

if !exists('g:christmas_chocola_undercurl') && g:christmas_chocola_underline != 0
  let g:christmas_chocola_undercurl = 1
endif

if !exists('g:christmas_chocola_inverse')
  let g:christmas_chocola_inverse = 1
endif

if !exists('g:christmas_chocola_colorterm')
  let g:christmas_chocola_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:christmas_chocola_bold == 1 ? 'bold' : 0,
      \ 'italic': g:christmas_chocola_italic == 1 ? 'italic' : 0,
      \ 'underline': g:christmas_chocola_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:christmas_chocola_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:christmas_chocola_inverse == 1 ? 'inverse' : 0,
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

call s:h('ChristmasChocolaBgLight', s:none, s:bglight)
call s:h('ChristmasChocolaBgLighter', s:none, s:bglighter)
call s:h('ChristmasChocolaBgDark', s:none, s:bgdark)
call s:h('ChristmasChocolaBgDarker', s:none, s:bgdarker)

call s:h('ChristmasChocolaFg', s:fg)
call s:h('ChristmasChocolaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('ChristmasChocolaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('ChristmasChocolaComment', s:comment)
call s:h('ChristmasChocolaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('ChristmasChocolaSelection', s:none, s:selection)

call s:h('ChristmasChocolaSubtle', s:subtle)

call s:h('ChristmasChocolaKeyColor', s:key_color)
call s:h('ChristmasChocolaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('ChristmasChocolaClassName', s:class_name)
call s:h('ChristmasChocolaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('ChristmasChocolaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('ChristmasChocolaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('ChristmasChocolaParameter', s:parameter_color)
call s:h('ChristmasChocolaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('ChristmasChocolaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('ChristmasChocolaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('ChristmasChocolaParameterInverse', s:bg, s:parameter_color)

call s:h('ChristmasChocolaKeyword', s:keyword_color)
call s:h('ChristmasChocolaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('ChristmasChocolaConstants', s:constants_color)
call s:h('ChristmasChocolaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('ChristmasChocolaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('ChristmasChocolaRed', s:red)
call s:h('ChristmasChocolaRedInverse', s:fg, s:red)

call s:h('ChristmasChocolaStringColor', s:string_color)
call s:h('ChristmasChocolaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('ChristmasChocolaError', s:red, s:none, [], s:red)

call s:h('ChristmasChocolaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('ChristmasChocolaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('ChristmasChocolaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('ChristmasChocolaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('ChristmasChocolaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('ChristmasChocolaBoundary', s:comment, s:bgdark)
call s:h('ChristmasChocolaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('ChristmasChocolaDiffChange', s:parameter_color, s:none)
call s:h('ChristmasChocolaDiffText', s:bg, s:parameter_color)
call s:h('ChristmasChocolaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:christmas_chocola_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  ChristmasChocolaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr ChristmasChocolaStringColor
hi! link DiffAdd      ChristmasChocolaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   ChristmasChocolaDiffChange
hi! link DiffDelete   ChristmasChocolaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     ChristmasChocolaDiffText
hi! link Directory    ChristmasChocolaConstantsBold
hi! link ErrorMsg     ChristmasChocolaRedInverse
hi! link FoldColumn   ChristmasChocolaSubtle
hi! link Folded       ChristmasChocolaBoundary
hi! link IncSearch    ChristmasChocolaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      ChristmasChocolaFgBold
hi! link NonText      ChristmasChocolaSubtle
" hi! link Pmenu        ChristmasChocolaBgDark
" hi! link PmenuSbar    ChristmasChocolaBgDark
hi! link PmenuSel     ChristmasChocolaSelection
hi! link PmenuThumb   ChristmasChocolaSelection
hi! link Question     ChristmasChocolaFgBold
hi! link Search       ChristmasChocolaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      ChristmasChocolaBoundary
" hi! link TabLineFill  ChristmasChocolaBgDarker
hi! link TabLineSel   Normal
hi! link Title        ChristmasChocolaClassNameBold
hi! link VertSplit    ChristmasChocolaBoundary
hi! link Visual       ChristmasChocolaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   ChristmasChocolaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey ChristmasChocolaRed
  hi! link LspDiagnosticsUnderline ChristmasChocolaFgUnderline
  hi! link LspDiagnosticsInformation ChristmasChocolaKeyColor
  hi! link LspDiagnosticsHint ChristmasChocolaKeyColor
  hi! link LspDiagnosticsError ChristmasChocolaError
  hi! link LspDiagnosticsWarning ChristmasChocolaParameter
  hi! link LspDiagnosticsUnderlineError ChristmasChocolaErrorLine
  hi! link LspDiagnosticsUnderlineHint ChristmasChocolaInfoLine
  hi! link LspDiagnosticsUnderlineInformation ChristmasChocolaInfoLine
  hi! link LspDiagnosticsUnderlineWarning ChristmasChocolaWarnLine
else
  hi! link SpecialKey ChristmasChocolaSubtle
endif

hi! link Comment ChristmasChocolaComment
hi! link Underlined ChristmasChocolaFgUnderline
hi! link Todo ChristmasChocolaTodo

hi! link Error ChristmasChocolaError
hi! link SpellBad ChristmasChocolaErrorLine
hi! link SpellLocal ChristmasChocolaWarnLine
hi! link SpellCap ChristmasChocolaInfoLine
hi! link SpellRare ChristmasChocolaInfoLine

hi! link Constant ChristmasChocolaConstants
hi! link String ChristmasChocolaStringColor
hi! link Character ChristmasChocolaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier ChristmasChocolaFg
hi! link Function ChristmasChocolaClassName

hi! link Statement ChristmasChocolaKeyword
hi! link Conditional ChristmasChocolaKeyword
hi! link Repeat ChristmasChocolaKeyword
hi! link Label ChristmasChocolaKeyword
hi! link Operator ChristmasChocolaKeyword
hi! link Keyword ChristmasChocolaKeyword
hi! link Exception ChristmasChocolaKeyword

hi! link PreProc ChristmasChocolaKeyword
hi! link Include ChristmasChocolaKeyword
hi! link Define ChristmasChocolaKeyword
hi! link Macro ChristmasChocolaKeyword
hi! link PreCondit ChristmasChocolaKeyword
hi! link StorageClass ChristmasChocolaKeyword
hi! link Structure ChristmasChocolaKeyword
hi! link Typedef ChristmasChocolaKeyword

hi! link Type ChristmasChocolaKeyColorItalic

hi! link Delimiter ChristmasChocolaFg

hi! link Special ChristmasChocolaKeyword
hi! link SpecialComment ChristmasChocolaKeyColorItalic
hi! link Tag ChristmasChocolaKeyColor
hi! link helpHyperTextJump ChristmasChocolaLink
hi! link helpCommand ChristmasChocolaConstants
hi! link helpExample ChristmasChocolaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
