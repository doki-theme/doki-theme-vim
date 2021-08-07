" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'cinnamon'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:cinnamon#palette.fg

let s:bglighter = g:cinnamon#palette.bglighter
let s:bglight   = g:cinnamon#palette.bglight
let s:bg        = g:cinnamon#palette.bg
let s:bgdark    = g:cinnamon#palette.bgdark
let s:bgdarker  = g:cinnamon#palette.bgdarker

let s:comment   = g:cinnamon#palette.comment
let s:selection = g:cinnamon#palette.selection
let s:subtle    = g:cinnamon#palette.subtle

let s:key_color      = g:cinnamon#palette.key_color
let s:class_name     = g:cinnamon#palette.class_name
let s:parameter_color    = g:cinnamon#palette.parameter_color
let s:keyword_color      = g:cinnamon#palette.keyword_color
let s:constants_color    = g:cinnamon#palette.constants_color
let s:red       = g:cinnamon#palette.red
let s:string_color    = g:cinnamon#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:cinnamon#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:cinnamon#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:cinnamon_bold')
  let g:cinnamon_bold = 1
endif

if !exists('g:cinnamon_italic')
  let g:cinnamon_italic = 1
endif

if !exists('g:cinnamon_underline')
  let g:cinnamon_underline = 1
endif

if !exists('g:cinnamon_undercurl') && g:cinnamon_underline != 0
  let g:cinnamon_undercurl = 1
endif

if !exists('g:cinnamon_inverse')
  let g:cinnamon_inverse = 1
endif

if !exists('g:cinnamon_colorterm')
  let g:cinnamon_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:cinnamon_bold == 1 ? 'bold' : 0,
      \ 'italic': g:cinnamon_italic == 1 ? 'italic' : 0,
      \ 'underline': g:cinnamon_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:cinnamon_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:cinnamon_inverse == 1 ? 'inverse' : 0,
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

call s:h('CinnamonBgLight', s:none, s:bglight)
call s:h('CinnamonBgLighter', s:none, s:bglighter)
call s:h('CinnamonBgDark', s:none, s:bgdark)
call s:h('CinnamonBgDarker', s:none, s:bgdarker)

call s:h('CinnamonFg', s:fg)
call s:h('CinnamonFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('CinnamonFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('CinnamonComment', s:comment)
call s:h('CinnamonCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('CinnamonSelection', s:none, s:selection)

call s:h('CinnamonSubtle', s:subtle)

call s:h('CinnamonKeyColor', s:key_color)
call s:h('CinnamonKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('CinnamonClassName', s:class_name)
call s:h('CinnamonClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('CinnamonClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('CinnamonClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('CinnamonParameter', s:parameter_color)
call s:h('CinnamonParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('CinnamonParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('CinnamonParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('CinnamonParameterInverse', s:bg, s:parameter_color)

call s:h('CinnamonKeyword', s:keyword_color)
call s:h('CinnamonKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('CinnamonConstants', s:constants_color)
call s:h('CinnamonConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('CinnamonConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('CinnamonRed', s:red)
call s:h('CinnamonRedInverse', s:fg, s:red)

call s:h('CinnamonStringColor', s:string_color)
call s:h('CinnamonStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('CinnamonError', s:red, s:none, [], s:red)

call s:h('CinnamonErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('CinnamonWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('CinnamonInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('CinnamonTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('CinnamonSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('CinnamonBoundary', s:comment, s:bgdark)
call s:h('CinnamonLink', s:key_color, s:none, [s:attrs.underline])

call s:h('CinnamonDiffChange', s:parameter_color, s:none)
call s:h('CinnamonDiffText', s:bg, s:parameter_color)
call s:h('CinnamonDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:cinnamon_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  CinnamonBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr CinnamonStringColor
hi! link DiffAdd      CinnamonClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   CinnamonDiffChange
hi! link DiffDelete   CinnamonDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     CinnamonDiffText
hi! link Directory    CinnamonConstantsBold
hi! link ErrorMsg     CinnamonRedInverse
hi! link FoldColumn   CinnamonSubtle
hi! link Folded       CinnamonBoundary
hi! link IncSearch    CinnamonParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      CinnamonFgBold
hi! link NonText      CinnamonSubtle
" hi! link Pmenu        CinnamonBgDark
" hi! link PmenuSbar    CinnamonBgDark
hi! link PmenuSel     CinnamonSelection
hi! link PmenuThumb   CinnamonSelection
hi! link Question     CinnamonFgBold
hi! link Search       CinnamonSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      CinnamonBoundary
" hi! link TabLineFill  CinnamonBgDarker
hi! link TabLineSel   Normal
hi! link Title        CinnamonClassNameBold
hi! link VertSplit    CinnamonBoundary
hi! link Visual       CinnamonSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   CinnamonParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey CinnamonRed
  hi! link LspDiagnosticsUnderline CinnamonFgUnderline
  hi! link LspDiagnosticsInformation CinnamonKeyColor
  hi! link LspDiagnosticsHint CinnamonKeyColor
  hi! link LspDiagnosticsError CinnamonError
  hi! link LspDiagnosticsWarning CinnamonParameter
  hi! link LspDiagnosticsUnderlineError CinnamonErrorLine
  hi! link LspDiagnosticsUnderlineHint CinnamonInfoLine
  hi! link LspDiagnosticsUnderlineInformation CinnamonInfoLine
  hi! link LspDiagnosticsUnderlineWarning CinnamonWarnLine
else
  hi! link SpecialKey CinnamonSubtle
endif

hi! link Comment CinnamonComment
hi! link Underlined CinnamonFgUnderline
hi! link Todo CinnamonTodo

hi! link Error CinnamonError
hi! link SpellBad CinnamonErrorLine
hi! link SpellLocal CinnamonWarnLine
hi! link SpellCap CinnamonInfoLine
hi! link SpellRare CinnamonInfoLine

hi! link Constant CinnamonConstants
hi! link String CinnamonStringColor
hi! link Character CinnamonKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier CinnamonFg
hi! link Function CinnamonClassName

hi! link Statement CinnamonKeyword
hi! link Conditional CinnamonKeyword
hi! link Repeat CinnamonKeyword
hi! link Label CinnamonKeyword
hi! link Operator CinnamonKeyword
hi! link Keyword CinnamonKeyword
hi! link Exception CinnamonKeyword

hi! link PreProc CinnamonKeyword
hi! link Include CinnamonKeyword
hi! link Define CinnamonKeyword
hi! link Macro CinnamonKeyword
hi! link PreCondit CinnamonKeyword
hi! link StorageClass CinnamonKeyword
hi! link Structure CinnamonKeyword
hi! link Typedef CinnamonKeyword

hi! link Type CinnamonKeyColorItalic

hi! link Delimiter CinnamonFg

hi! link Special CinnamonKeyword
hi! link SpecialComment CinnamonKeyColorItalic
hi! link Tag CinnamonKeyColor
hi! link helpHyperTextJump CinnamonLink
hi! link helpCommand CinnamonConstants
hi! link helpExample CinnamonClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
