" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'maple_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:maple_dark#palette.fg

let s:bglighter = g:maple_dark#palette.bglighter
let s:bglight   = g:maple_dark#palette.bglight
let s:bg        = g:maple_dark#palette.bg
let s:bgdark    = g:maple_dark#palette.bgdark
let s:bgdarker  = g:maple_dark#palette.bgdarker

let s:comment   = g:maple_dark#palette.comment
let s:selection = g:maple_dark#palette.selection
let s:subtle    = g:maple_dark#palette.subtle

let s:key_color      = g:maple_dark#palette.key_color
let s:class_name     = g:maple_dark#palette.class_name
let s:parameter_color    = g:maple_dark#palette.parameter_color
let s:keyword_color      = g:maple_dark#palette.keyword_color
let s:constants_color    = g:maple_dark#palette.constants_color
let s:red       = g:maple_dark#palette.red
let s:string_color    = g:maple_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:maple_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:maple_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:maple_dark_bold')
  let g:maple_dark_bold = 1
endif

if !exists('g:maple_dark_italic')
  let g:maple_dark_italic = 1
endif

if !exists('g:maple_dark_underline')
  let g:maple_dark_underline = 1
endif

if !exists('g:maple_dark_undercurl') && g:maple_dark_underline != 0
  let g:maple_dark_undercurl = 1
endif

if !exists('g:maple_dark_inverse')
  let g:maple_dark_inverse = 1
endif

if !exists('g:maple_dark_colorterm')
  let g:maple_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:maple_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:maple_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:maple_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:maple_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:maple_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('MapleDarkBgLight', s:none, s:bglight)
call s:h('MapleDarkBgLighter', s:none, s:bglighter)
call s:h('MapleDarkBgDark', s:none, s:bgdark)
call s:h('MapleDarkBgDarker', s:none, s:bgdarker)

call s:h('MapleDarkFg', s:fg)
call s:h('MapleDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MapleDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MapleDarkComment', s:comment)
call s:h('MapleDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MapleDarkSelection', s:none, s:selection)

call s:h('MapleDarkSubtle', s:subtle)

call s:h('MapleDarkKeyColor', s:key_color)
call s:h('MapleDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MapleDarkClassName', s:class_name)
call s:h('MapleDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MapleDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MapleDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MapleDarkParameter', s:parameter_color)
call s:h('MapleDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MapleDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MapleDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MapleDarkParameterInverse', s:bg, s:parameter_color)

call s:h('MapleDarkKeyword', s:keyword_color)
call s:h('MapleDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MapleDarkConstants', s:constants_color)
call s:h('MapleDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MapleDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MapleDarkRed', s:red)
call s:h('MapleDarkRedInverse', s:fg, s:red)

call s:h('MapleDarkStringColor', s:string_color)
call s:h('MapleDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MapleDarkError', s:red, s:none, [], s:red)

call s:h('MapleDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MapleDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MapleDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MapleDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MapleDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MapleDarkBoundary', s:comment, s:bgdark)
call s:h('MapleDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MapleDarkDiffChange', s:parameter_color, s:none)
call s:h('MapleDarkDiffText', s:bg, s:parameter_color)
call s:h('MapleDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:maple_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MapleDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MapleDarkStringColor
hi! link DiffAdd      MapleDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MapleDarkDiffChange
hi! link DiffDelete   MapleDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MapleDarkDiffText
hi! link Directory    MapleDarkConstantsBold
hi! link ErrorMsg     MapleDarkRedInverse
hi! link FoldColumn   MapleDarkSubtle
hi! link Folded       MapleDarkBoundary
hi! link IncSearch    MapleDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MapleDarkFgBold
hi! link NonText      MapleDarkSubtle
" hi! link Pmenu        MapleDarkBgDark
" hi! link PmenuSbar    MapleDarkBgDark
hi! link PmenuSel     MapleDarkSelection
hi! link PmenuThumb   MapleDarkSelection
hi! link Question     MapleDarkFgBold
hi! link Search       MapleDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MapleDarkBoundary
" hi! link TabLineFill  MapleDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        MapleDarkClassNameBold
hi! link VertSplit    MapleDarkBoundary
hi! link Visual       MapleDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MapleDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MapleDarkRed
  hi! link LspDiagnosticsUnderline MapleDarkFgUnderline
  hi! link LspDiagnosticsInformation MapleDarkKeyColor
  hi! link LspDiagnosticsHint MapleDarkKeyColor
  hi! link LspDiagnosticsError MapleDarkError
  hi! link LspDiagnosticsWarning MapleDarkParameter
  hi! link LspDiagnosticsUnderlineError MapleDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint MapleDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation MapleDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning MapleDarkWarnLine
else
  hi! link SpecialKey MapleDarkSubtle
endif

hi! link Comment MapleDarkComment
hi! link Underlined MapleDarkFgUnderline
hi! link Todo MapleDarkTodo

hi! link Error MapleDarkError
hi! link SpellBad MapleDarkErrorLine
hi! link SpellLocal MapleDarkWarnLine
hi! link SpellCap MapleDarkInfoLine
hi! link SpellRare MapleDarkInfoLine

hi! link Constant MapleDarkConstants
hi! link String MapleDarkStringColor
hi! link Character MapleDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MapleDarkFg
hi! link Function MapleDarkClassName

hi! link Statement MapleDarkKeyword
hi! link Conditional MapleDarkKeyword
hi! link Repeat MapleDarkKeyword
hi! link Label MapleDarkKeyword
hi! link Operator MapleDarkKeyword
hi! link Keyword MapleDarkKeyword
hi! link Exception MapleDarkKeyword

hi! link PreProc MapleDarkKeyword
hi! link Include MapleDarkKeyword
hi! link Define MapleDarkKeyword
hi! link Macro MapleDarkKeyword
hi! link PreCondit MapleDarkKeyword
hi! link StorageClass MapleDarkKeyword
hi! link Structure MapleDarkKeyword
hi! link Typedef MapleDarkKeyword

hi! link Type MapleDarkKeyColorItalic

hi! link Delimiter MapleDarkFg

hi! link Special MapleDarkKeyword
hi! link SpecialComment MapleDarkKeyColorItalic
hi! link Tag MapleDarkKeyColor
hi! link helpHyperTextJump MapleDarkLink
hi! link helpCommand MapleDarkConstants
hi! link helpExample MapleDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
