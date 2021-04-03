" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'astolfo'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:astolfo#palette.fg

let s:bglighter = g:astolfo#palette.bglighter
let s:bglight   = g:astolfo#palette.bglight
let s:bg        = g:astolfo#palette.bg
let s:bgdark    = g:astolfo#palette.bgdark
let s:bgdarker  = g:astolfo#palette.bgdarker

let s:comment   = g:astolfo#palette.comment
let s:selection = g:astolfo#palette.selection
let s:subtle    = g:astolfo#palette.subtle

let s:key_color      = g:astolfo#palette.key_color
let s:class_name     = g:astolfo#palette.class_name
let s:parameter_color    = g:astolfo#palette.parameter_color
let s:keyword_color      = g:astolfo#palette.keyword_color
let s:constants_color    = g:astolfo#palette.constants_color
let s:red       = g:astolfo#palette.red
let s:string_color    = g:astolfo#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:astolfo#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:astolfo#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:astolfo_bold')
  let g:astolfo_bold = 1
endif

if !exists('g:astolfo_italic')
  let g:astolfo_italic = 1
endif

if !exists('g:astolfo_underline')
  let g:astolfo_underline = 1
endif

if !exists('g:astolfo_undercurl') && g:astolfo_underline != 0
  let g:astolfo_undercurl = 1
endif

if !exists('g:astolfo_inverse')
  let g:astolfo_inverse = 1
endif

if !exists('g:astolfo_colorterm')
  let g:astolfo_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:astolfo_bold == 1 ? 'bold' : 0,
      \ 'italic': g:astolfo_italic == 1 ? 'italic' : 0,
      \ 'underline': g:astolfo_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:astolfo_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:astolfo_inverse == 1 ? 'inverse' : 0,
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

call s:h('AstolfoBgLight', s:none, s:bglight)
call s:h('AstolfoBgLighter', s:none, s:bglighter)
call s:h('AstolfoBgDark', s:none, s:bgdark)
call s:h('AstolfoBgDarker', s:none, s:bgdarker)

call s:h('AstolfoFg', s:fg)
call s:h('AstolfoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('AstolfoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('AstolfoComment', s:comment)
call s:h('AstolfoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('AstolfoSelection', s:none, s:selection)

call s:h('AstolfoSubtle', s:subtle)

call s:h('AstolfoKeyColor', s:key_color)
call s:h('AstolfoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('AstolfoClassName', s:class_name)
call s:h('AstolfoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('AstolfoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('AstolfoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('AstolfoParameter', s:parameter_color)
call s:h('AstolfoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('AstolfoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('AstolfoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('AstolfoParameterInverse', s:bg, s:parameter_color)

call s:h('AstolfoKeyword', s:keyword_color)
call s:h('AstolfoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('AstolfoConstants', s:constants_color)
call s:h('AstolfoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('AstolfoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('AstolfoRed', s:red)
call s:h('AstolfoRedInverse', s:fg, s:red)

call s:h('AstolfoStringColor', s:string_color)
call s:h('AstolfoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('AstolfoError', s:red, s:none, [], s:red)

call s:h('AstolfoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('AstolfoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('AstolfoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('AstolfoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('AstolfoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('AstolfoBoundary', s:comment, s:bgdark)
call s:h('AstolfoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('AstolfoDiffChange', s:parameter_color, s:none)
call s:h('AstolfoDiffText', s:bg, s:parameter_color)
call s:h('AstolfoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:astolfo_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  AstolfoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr AstolfoStringColor
hi! link DiffAdd      AstolfoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   AstolfoDiffChange
hi! link DiffDelete   AstolfoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     AstolfoDiffText
hi! link Directory    AstolfoConstantsBold
hi! link ErrorMsg     AstolfoRedInverse
hi! link FoldColumn   AstolfoSubtle
hi! link Folded       AstolfoBoundary
hi! link IncSearch    AstolfoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      AstolfoFgBold
hi! link NonText      AstolfoSubtle
" hi! link Pmenu        AstolfoBgDark
" hi! link PmenuSbar    AstolfoBgDark
hi! link PmenuSel     AstolfoSelection
hi! link PmenuThumb   AstolfoSelection
hi! link Question     AstolfoFgBold
hi! link Search       AstolfoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      AstolfoBoundary
" hi! link TabLineFill  AstolfoBgDarker
hi! link TabLineSel   Normal
hi! link Title        AstolfoClassNameBold
hi! link VertSplit    AstolfoBoundary
hi! link Visual       AstolfoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   AstolfoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey AstolfoRed
  hi! link LspDiagnosticsUnderline AstolfoFgUnderline
  hi! link LspDiagnosticsInformation AstolfoKeyColor
  hi! link LspDiagnosticsHint AstolfoKeyColor
  hi! link LspDiagnosticsError AstolfoError
  hi! link LspDiagnosticsWarning AstolfoParameter
  hi! link LspDiagnosticsUnderlineError AstolfoErrorLine
  hi! link LspDiagnosticsUnderlineHint AstolfoInfoLine
  hi! link LspDiagnosticsUnderlineInformation AstolfoInfoLine
  hi! link LspDiagnosticsUnderlineWarning AstolfoWarnLine
else
  hi! link SpecialKey AstolfoSubtle
endif

hi! link Comment AstolfoComment
hi! link Underlined AstolfoFgUnderline
hi! link Todo AstolfoTodo

hi! link Error AstolfoError
hi! link SpellBad AstolfoErrorLine
hi! link SpellLocal AstolfoWarnLine
hi! link SpellCap AstolfoInfoLine
hi! link SpellRare AstolfoInfoLine

hi! link Constant AstolfoConstants
hi! link String AstolfoStringColor
hi! link Character AstolfoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier AstolfoFg
hi! link Function AstolfoClassName

hi! link Statement AstolfoKeyword
hi! link Conditional AstolfoKeyword
hi! link Repeat AstolfoKeyword
hi! link Label AstolfoKeyword
hi! link Operator AstolfoKeyword
hi! link Keyword AstolfoKeyword
hi! link Exception AstolfoKeyword

hi! link PreProc AstolfoKeyword
hi! link Include AstolfoKeyword
hi! link Define AstolfoKeyword
hi! link Macro AstolfoKeyword
hi! link PreCondit AstolfoKeyword
hi! link StorageClass AstolfoKeyword
hi! link Structure AstolfoKeyword
hi! link Typedef AstolfoKeyword

hi! link Type AstolfoKeyColorItalic

hi! link Delimiter AstolfoFg

hi! link Special AstolfoKeyword
hi! link SpecialComment AstolfoKeyColorItalic
hi! link Tag AstolfoKeyColor
hi! link helpHyperTextJump AstolfoLink
hi! link helpCommand AstolfoConstants
hi! link helpExample AstolfoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
