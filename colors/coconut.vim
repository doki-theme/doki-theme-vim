" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'coconut'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:coconut#palette.fg

let s:bglighter = g:coconut#palette.bglighter
let s:bglight   = g:coconut#palette.bglight
let s:bg        = g:coconut#palette.bg
let s:bgdark    = g:coconut#palette.bgdark
let s:bgdarker  = g:coconut#palette.bgdarker

let s:comment   = g:coconut#palette.comment
let s:selection = g:coconut#palette.selection
let s:subtle    = g:coconut#palette.subtle

let s:key_color      = g:coconut#palette.key_color
let s:class_name     = g:coconut#palette.class_name
let s:parameter_color    = g:coconut#palette.parameter_color
let s:keyword_color      = g:coconut#palette.keyword_color
let s:constants_color    = g:coconut#palette.constants_color
let s:red       = g:coconut#palette.red
let s:string_color    = g:coconut#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:coconut#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:coconut#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:coconut_bold')
  let g:coconut_bold = 1
endif

if !exists('g:coconut_italic')
  let g:coconut_italic = 1
endif

if !exists('g:coconut_underline')
  let g:coconut_underline = 1
endif

if !exists('g:coconut_undercurl') && g:coconut_underline != 0
  let g:coconut_undercurl = 1
endif

if !exists('g:coconut_inverse')
  let g:coconut_inverse = 1
endif

if !exists('g:coconut_colorterm')
  let g:coconut_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:coconut_bold == 1 ? 'bold' : 0,
      \ 'italic': g:coconut_italic == 1 ? 'italic' : 0,
      \ 'underline': g:coconut_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:coconut_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:coconut_inverse == 1 ? 'inverse' : 0,
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

call s:h('CoconutBgLight', s:none, s:bglight)
call s:h('CoconutBgLighter', s:none, s:bglighter)
call s:h('CoconutBgDark', s:none, s:bgdark)
call s:h('CoconutBgDarker', s:none, s:bgdarker)

call s:h('CoconutFg', s:fg)
call s:h('CoconutFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('CoconutFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('CoconutComment', s:comment)
call s:h('CoconutCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('CoconutSelection', s:none, s:selection)

call s:h('CoconutSubtle', s:subtle)

call s:h('CoconutKeyColor', s:key_color)
call s:h('CoconutKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('CoconutClassName', s:class_name)
call s:h('CoconutClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('CoconutClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('CoconutClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('CoconutParameter', s:parameter_color)
call s:h('CoconutParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('CoconutParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('CoconutParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('CoconutParameterInverse', s:bg, s:parameter_color)

call s:h('CoconutKeyword', s:keyword_color)
call s:h('CoconutKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('CoconutConstants', s:constants_color)
call s:h('CoconutConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('CoconutConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('CoconutRed', s:red)
call s:h('CoconutRedInverse', s:fg, s:red)

call s:h('CoconutStringColor', s:string_color)
call s:h('CoconutStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('CoconutError', s:red, s:none, [], s:red)

call s:h('CoconutErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('CoconutWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('CoconutInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('CoconutTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('CoconutSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('CoconutBoundary', s:comment, s:bgdark)
call s:h('CoconutLink', s:key_color, s:none, [s:attrs.underline])

call s:h('CoconutDiffChange', s:parameter_color, s:none)
call s:h('CoconutDiffText', s:bg, s:parameter_color)
call s:h('CoconutDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:coconut_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  CoconutBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr CoconutStringColor
hi! link DiffAdd      CoconutClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   CoconutDiffChange
hi! link DiffDelete   CoconutDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     CoconutDiffText
hi! link Directory    CoconutConstantsBold
hi! link ErrorMsg     CoconutRedInverse
hi! link FoldColumn   CoconutSubtle
hi! link Folded       CoconutBoundary
hi! link IncSearch    CoconutParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      CoconutFgBold
hi! link NonText      CoconutSubtle
" hi! link Pmenu        CoconutBgDark
" hi! link PmenuSbar    CoconutBgDark
hi! link PmenuSel     CoconutSelection
hi! link PmenuThumb   CoconutSelection
hi! link Question     CoconutFgBold
hi! link Search       CoconutSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      CoconutBoundary
" hi! link TabLineFill  CoconutBgDarker
hi! link TabLineSel   Normal
hi! link Title        CoconutClassNameBold
hi! link VertSplit    CoconutBoundary
hi! link Visual       CoconutSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   CoconutParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey CoconutRed
  hi! link LspDiagnosticsUnderline CoconutFgUnderline
  hi! link LspDiagnosticsInformation CoconutKeyColor
  hi! link LspDiagnosticsHint CoconutKeyColor
  hi! link LspDiagnosticsError CoconutError
  hi! link LspDiagnosticsWarning CoconutParameter
  hi! link LspDiagnosticsUnderlineError CoconutErrorLine
  hi! link LspDiagnosticsUnderlineHint CoconutInfoLine
  hi! link LspDiagnosticsUnderlineInformation CoconutInfoLine
  hi! link LspDiagnosticsUnderlineWarning CoconutWarnLine
else
  hi! link SpecialKey CoconutSubtle
endif

hi! link Comment CoconutComment
hi! link Underlined CoconutFgUnderline
hi! link Todo CoconutTodo

hi! link Error CoconutError
hi! link SpellBad CoconutErrorLine
hi! link SpellLocal CoconutWarnLine
hi! link SpellCap CoconutInfoLine
hi! link SpellRare CoconutInfoLine

hi! link Constant CoconutConstants
hi! link String CoconutStringColor
hi! link Character CoconutKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier CoconutFg
hi! link Function CoconutClassName

hi! link Statement CoconutKeyword
hi! link Conditional CoconutKeyword
hi! link Repeat CoconutKeyword
hi! link Label CoconutKeyword
hi! link Operator CoconutKeyword
hi! link Keyword CoconutKeyword
hi! link Exception CoconutKeyword

hi! link PreProc CoconutKeyword
hi! link Include CoconutKeyword
hi! link Define CoconutKeyword
hi! link Macro CoconutKeyword
hi! link PreCondit CoconutKeyword
hi! link StorageClass CoconutKeyword
hi! link Structure CoconutKeyword
hi! link Typedef CoconutKeyword

hi! link Type CoconutKeyColorItalic

hi! link Delimiter CoconutFg

hi! link Special CoconutKeyword
hi! link SpecialComment CoconutKeyColorItalic
hi! link Tag CoconutKeyColor
hi! link helpHyperTextJump CoconutLink
hi! link helpCommand CoconutConstants
hi! link helpExample CoconutClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
