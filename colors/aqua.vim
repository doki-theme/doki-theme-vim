" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'aqua'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:aqua#palette.fg

let s:bglighter = g:aqua#palette.bglighter
let s:bglight   = g:aqua#palette.bglight
let s:bg        = g:aqua#palette.bg
let s:bgdark    = g:aqua#palette.bgdark
let s:bgdarker  = g:aqua#palette.bgdarker

let s:comment   = g:aqua#palette.comment
let s:selection = g:aqua#palette.selection
let s:subtle    = g:aqua#palette.subtle

let s:key_color      = g:aqua#palette.key_color
let s:class_name     = g:aqua#palette.class_name
let s:parameter_color    = g:aqua#palette.parameter_color
let s:keyword_color      = g:aqua#palette.keyword_color
let s:constants_color    = g:aqua#palette.constants_color
let s:red       = g:aqua#palette.red
let s:string_color    = g:aqua#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:aqua#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:aqua#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:aqua_bold')
  let g:aqua_bold = 1
endif

if !exists('g:aqua_italic')
  let g:aqua_italic = 1
endif

if !exists('g:aqua_underline')
  let g:aqua_underline = 1
endif

if !exists('g:aqua_undercurl') && g:aqua_underline != 0
  let g:aqua_undercurl = 1
endif

if !exists('g:aqua_inverse')
  let g:aqua_inverse = 1
endif

if !exists('g:aqua_colorterm')
  let g:aqua_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:aqua_bold == 1 ? 'bold' : 0,
      \ 'italic': g:aqua_italic == 1 ? 'italic' : 0,
      \ 'underline': g:aqua_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:aqua_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:aqua_inverse == 1 ? 'inverse' : 0,
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

call s:h('AquaBgLight', s:none, s:bglight)
call s:h('AquaBgLighter', s:none, s:bglighter)
call s:h('AquaBgDark', s:none, s:bgdark)
call s:h('AquaBgDarker', s:none, s:bgdarker)

call s:h('AquaFg', s:fg)
call s:h('AquaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AquaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AquaComment', s:comment)
call s:h('AquaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AquaSelection', s:none, s:selection)

call s:h('AquaSubtle', s:subtle)

call s:h('AquaKeyColor', s:key_color)
call s:h('AquaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AquaClassName', s:class_name)
call s:h('AquaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AquaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AquaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AquaParameter', s:parameter_color)
call s:h('AquaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AquaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AquaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AquaParameterInverse', s:bg, s:parameter_color)

call s:h('AquaKeyword', s:keyword_color)
call s:h('AquaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AquaConstants', s:constants_color)
call s:h('AquaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AquaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AquaRed', s:red)
call s:h('AquaRedInverse', s:fg, s:red)

call s:h('AquaStringColor', s:string_color)
call s:h('AquaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AquaError', s:red, s:none, [], s:red)

call s:h('AquaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AquaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AquaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AquaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AquaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AquaBoundary', s:comment, s:bgdark)
call s:h('AquaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AquaDiffChange', s:parameter_color, s:none)
call s:h('AquaDiffText', s:bg, s:parameter_color)
call s:h('AquaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:aqua_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AquaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AquaStringColor
hi! link DiffAdd      AquaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AquaDiffChange
hi! link DiffDelete   AquaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AquaDiffText
hi! link Directory    AquaConstantsBold
hi! link ErrorMsg     AquaRedInverse
hi! link FoldColumn   AquaSubtle
hi! link Folded       AquaBoundary
hi! link IncSearch    AquaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AquaFgBold
hi! link NonText      AquaSubtle
" hi! link Pmenu        AquaBgDark
" hi! link PmenuSbar    AquaBgDark
hi! link PmenuSel     AquaSelection
hi! link PmenuThumb   AquaSelection
hi! link Question     AquaFgBold
hi! link Search       AquaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AquaBoundary
" hi! link TabLineFill  AquaBgDarker
hi! link TabLineSel   Normal
hi! link Title        AquaClassNameBold
hi! link VertSplit    AquaBoundary
hi! link Visual       AquaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AquaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AquaRed
  hi! link LspDiagnosticsUnderline AquaFgUnderline
  hi! link LspDiagnosticsInformation AquaKeyColor
  hi! link LspDiagnosticsHint AquaKeyColor
  hi! link LspDiagnosticsError AquaError
  hi! link LspDiagnosticsWarning AquaParameter
  hi! link LspDiagnosticsUnderlineError AquaErrorLine
  hi! link LspDiagnosticsUnderlineHint AquaInfoLine
  hi! link LspDiagnosticsUnderlineInformation AquaInfoLine
  hi! link LspDiagnosticsUnderlineWarning AquaWarnLine
else
  hi! link SpecialKey AquaSubtle
endif

hi! link Comment AquaComment
hi! link Underlined AquaFgUnderline
hi! link Todo AquaTodo

hi! link Error AquaError
hi! link SpellBad AquaErrorLine
hi! link SpellLocal AquaWarnLine
hi! link SpellCap AquaInfoLine
hi! link SpellRare AquaInfoLine

hi! link Constant AquaConstants
hi! link String AquaStringColor
hi! link Character AquaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AquaFg
hi! link Function AquaClassName

hi! link Statement AquaKeyword
hi! link Conditional AquaKeyword
hi! link Repeat AquaKeyword
hi! link Label AquaKeyword
hi! link Operator AquaKeyword
hi! link Keyword AquaKeyword
hi! link Exception AquaKeyword

hi! link PreProc AquaKeyword
hi! link Include AquaKeyword
hi! link Define AquaKeyword
hi! link Macro AquaKeyword
hi! link PreCondit AquaKeyword
hi! link StorageClass AquaKeyword
hi! link Structure AquaKeyword
hi! link Typedef AquaKeyword

hi! link Type AquaKeyColorItalic

hi! link Delimiter AquaFg

hi! link Special AquaKeyword
hi! link SpecialComment AquaKeyColorItalic
hi! link Tag AquaKeyColor
hi! link helpHyperTextJump AquaLink
hi! link helpCommand AquaConstants
hi! link helpExample AquaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
