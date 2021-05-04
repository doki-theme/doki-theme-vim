" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'gray'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:gray#palette.fg

let s:bglighter = g:gray#palette.bglighter
let s:bglight   = g:gray#palette.bglight
let s:bg        = g:gray#palette.bg
let s:bgdark    = g:gray#palette.bgdark
let s:bgdarker  = g:gray#palette.bgdarker

let s:comment   = g:gray#palette.comment
let s:selection = g:gray#palette.selection
let s:subtle    = g:gray#palette.subtle

let s:key_color      = g:gray#palette.key_color
let s:class_name     = g:gray#palette.class_name
let s:parameter_color    = g:gray#palette.parameter_color
let s:keyword_color      = g:gray#palette.keyword_color
let s:constants_color    = g:gray#palette.constants_color
let s:red       = g:gray#palette.red
let s:string_color    = g:gray#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:gray#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:gray#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:gray_bold')
  let g:gray_bold = 1
endif

if !exists('g:gray_italic')
  let g:gray_italic = 1
endif

if !exists('g:gray_underline')
  let g:gray_underline = 1
endif

if !exists('g:gray_undercurl') && g:gray_underline != 0
  let g:gray_undercurl = 1
endif

if !exists('g:gray_inverse')
  let g:gray_inverse = 1
endif

if !exists('g:gray_colorterm')
  let g:gray_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:gray_bold == 1 ? 'bold' : 0,
      \ 'italic': g:gray_italic == 1 ? 'italic' : 0,
      \ 'underline': g:gray_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:gray_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:gray_inverse == 1 ? 'inverse' : 0,
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

call s:h('GrayBgLight', s:none, s:bglight)
call s:h('GrayBgLighter', s:none, s:bglighter)
call s:h('GrayBgDark', s:none, s:bgdark)
call s:h('GrayBgDarker', s:none, s:bgdarker)

call s:h('GrayFg', s:fg)
call s:h('GrayFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('GrayFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('GrayComment', s:comment)
call s:h('GrayCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('GraySelection', s:none, s:selection)

call s:h('GraySubtle', s:subtle)

call s:h('GrayKeyColor', s:key_color)
call s:h('GrayKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('GrayClassName', s:class_name)
call s:h('GrayClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('GrayClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('GrayClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('GrayParameter', s:parameter_color)
call s:h('GrayParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('GrayParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('GrayParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('GrayParameterInverse', s:bg, s:parameter_color)

call s:h('GrayKeyword', s:keyword_color)
call s:h('GrayKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('GrayConstants', s:constants_color)
call s:h('GrayConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('GrayConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('GrayRed', s:red)
call s:h('GrayRedInverse', s:fg, s:red)

call s:h('GrayStringColor', s:string_color)
call s:h('GrayStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('GrayError', s:red, s:none, [], s:red)

call s:h('GrayErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('GrayWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('GrayInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('GrayTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('GraySearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('GrayBoundary', s:comment, s:bgdark)
call s:h('GrayLink', s:key_color, s:none, [s:attrs.underline])

call s:h('GrayDiffChange', s:parameter_color, s:none)
call s:h('GrayDiffText', s:bg, s:parameter_color)
call s:h('GrayDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:gray_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  GrayBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr GrayStringColor
hi! link DiffAdd      GrayClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   GrayDiffChange
hi! link DiffDelete   GrayDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     GrayDiffText
hi! link Directory    GrayConstantsBold
hi! link ErrorMsg     GrayRedInverse
hi! link FoldColumn   GraySubtle
hi! link Folded       GrayBoundary
hi! link IncSearch    GrayParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      GrayFgBold
hi! link NonText      GraySubtle
" hi! link Pmenu        GrayBgDark
" hi! link PmenuSbar    GrayBgDark
hi! link PmenuSel     GraySelection
hi! link PmenuThumb   GraySelection
hi! link Question     GrayFgBold
hi! link Search       GraySearch
call s:h('SignColumn', s:comment)
hi! link TabLine      GrayBoundary
" hi! link TabLineFill  GrayBgDarker
hi! link TabLineSel   Normal
hi! link Title        GrayClassNameBold
hi! link VertSplit    GrayBoundary
hi! link Visual       GraySelection
hi! link VisualNOS    Visual
hi! link WarningMsg   GrayParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey GrayRed
  hi! link LspDiagnosticsUnderline GrayFgUnderline
  hi! link LspDiagnosticsInformation GrayKeyColor
  hi! link LspDiagnosticsHint GrayKeyColor
  hi! link LspDiagnosticsError GrayError
  hi! link LspDiagnosticsWarning GrayParameter
  hi! link LspDiagnosticsUnderlineError GrayErrorLine
  hi! link LspDiagnosticsUnderlineHint GrayInfoLine
  hi! link LspDiagnosticsUnderlineInformation GrayInfoLine
  hi! link LspDiagnosticsUnderlineWarning GrayWarnLine
else
  hi! link SpecialKey GraySubtle
endif

hi! link Comment GrayComment
hi! link Underlined GrayFgUnderline
hi! link Todo GrayTodo

hi! link Error GrayError
hi! link SpellBad GrayErrorLine
hi! link SpellLocal GrayWarnLine
hi! link SpellCap GrayInfoLine
hi! link SpellRare GrayInfoLine

hi! link Constant GrayConstants
hi! link String GrayStringColor
hi! link Character GrayKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier GrayFg
hi! link Function GrayClassName

hi! link Statement GrayKeyword
hi! link Conditional GrayKeyword
hi! link Repeat GrayKeyword
hi! link Label GrayKeyword
hi! link Operator GrayKeyword
hi! link Keyword GrayKeyword
hi! link Exception GrayKeyword

hi! link PreProc GrayKeyword
hi! link Include GrayKeyword
hi! link Define GrayKeyword
hi! link Macro GrayKeyword
hi! link PreCondit GrayKeyword
hi! link StorageClass GrayKeyword
hi! link Structure GrayKeyword
hi! link Typedef GrayKeyword

hi! link Type GrayKeyColorItalic

hi! link Delimiter GrayFg

hi! link Special GrayKeyword
hi! link SpecialComment GrayKeyColorItalic
hi! link Tag GrayKeyColor
hi! link helpHyperTextJump GrayLink
hi! link helpCommand GrayConstants
hi! link helpExample GrayClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
