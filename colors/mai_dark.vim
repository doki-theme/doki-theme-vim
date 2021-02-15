" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mai_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mai_dark#palette.fg

let s:bglighter = g:mai_dark#palette.bglighter
let s:bglight   = g:mai_dark#palette.bglight
let s:bg        = g:mai_dark#palette.bg
let s:bgdark    = g:mai_dark#palette.bgdark
let s:bgdarker  = g:mai_dark#palette.bgdarker

let s:comment   = g:mai_dark#palette.comment
let s:selection = g:mai_dark#palette.selection
let s:subtle    = g:mai_dark#palette.subtle

let s:key_color      = g:mai_dark#palette.key_color
let s:class_name     = g:mai_dark#palette.class_name
let s:parameter_color    = g:mai_dark#palette.parameter_color
let s:keyword_color      = g:mai_dark#palette.keyword_color
let s:constants_color    = g:mai_dark#palette.constants_color
let s:red       = g:mai_dark#palette.red
let s:string_color    = g:mai_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mai_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mai_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mai_dark_bold')
  let g:mai_dark_bold = 1
endif

if !exists('g:mai_dark_italic')
  let g:mai_dark_italic = 1
endif

if !exists('g:mai_dark_underline')
  let g:mai_dark_underline = 1
endif

if !exists('g:mai_dark_undercurl') && g:mai_dark_underline != 0
  let g:mai_dark_undercurl = 1
endif

if !exists('g:mai_dark_inverse')
  let g:mai_dark_inverse = 1
endif

if !exists('g:mai_dark_colorterm')
  let g:mai_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mai_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mai_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mai_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mai_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mai_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('MaiDarkBgLight', s:none, s:bglight)
call s:h('MaiDarkBgLighter', s:none, s:bglighter)
call s:h('MaiDarkBgDark', s:none, s:bgdark)
call s:h('MaiDarkBgDarker', s:none, s:bgdarker)

call s:h('MaiDarkFg', s:fg)
call s:h('MaiDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MaiDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MaiDarkComment', s:comment)
call s:h('MaiDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MaiDarkSelection', s:none, s:selection)

call s:h('MaiDarkSubtle', s:subtle)

call s:h('MaiDarkKeyColor', s:key_color)
call s:h('MaiDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MaiDarkClassName', s:class_name)
call s:h('MaiDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MaiDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MaiDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MaiDarkParameter', s:parameter_color)
call s:h('MaiDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MaiDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MaiDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MaiDarkParameterInverse', s:bg, s:parameter_color)

call s:h('MaiDarkKeyword', s:keyword_color)
call s:h('MaiDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MaiDarkConstants', s:constants_color)
call s:h('MaiDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MaiDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MaiDarkRed', s:red)
call s:h('MaiDarkRedInverse', s:fg, s:red)

call s:h('MaiDarkStringColor', s:string_color)
call s:h('MaiDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MaiDarkError', s:red, s:none, [], s:red)

call s:h('MaiDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MaiDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MaiDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MaiDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MaiDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MaiDarkBoundary', s:comment, s:bgdark)
call s:h('MaiDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MaiDarkDiffChange', s:parameter_color, s:none)
call s:h('MaiDarkDiffText', s:bg, s:parameter_color)
call s:h('MaiDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:mai_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MaiDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MaiDarkStringColor
hi! link DiffAdd      MaiDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MaiDarkDiffChange
hi! link DiffDelete   MaiDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MaiDarkDiffText
hi! link Directory    MaiDarkConstantsBold
hi! link ErrorMsg     MaiDarkRedInverse
hi! link FoldColumn   MaiDarkSubtle
hi! link Folded       MaiDarkBoundary
hi! link IncSearch    MaiDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MaiDarkFgBold
hi! link NonText      MaiDarkSubtle
" hi! link Pmenu        MaiDarkBgDark
" hi! link PmenuSbar    MaiDarkBgDark
hi! link PmenuSel     MaiDarkSelection
hi! link PmenuThumb   MaiDarkSelection
hi! link Question     MaiDarkFgBold
hi! link Search       MaiDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MaiDarkBoundary
" hi! link TabLineFill  MaiDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        MaiDarkClassNameBold
hi! link VertSplit    MaiDarkBoundary
hi! link Visual       MaiDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MaiDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MaiDarkRed
  hi! link LspDiagnosticsUnderline MaiDarkFgUnderline
  hi! link LspDiagnosticsInformation MaiDarkKeyColor
  hi! link LspDiagnosticsHint MaiDarkKeyColor
  hi! link LspDiagnosticsError MaiDarkError
  hi! link LspDiagnosticsWarning MaiDarkParameter
  hi! link LspDiagnosticsUnderlineError MaiDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint MaiDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation MaiDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning MaiDarkWarnLine
else
  hi! link SpecialKey MaiDarkSubtle
endif

hi! link Comment MaiDarkComment
hi! link Underlined MaiDarkFgUnderline
hi! link Todo MaiDarkTodo

hi! link Error MaiDarkError
hi! link SpellBad MaiDarkErrorLine
hi! link SpellLocal MaiDarkWarnLine
hi! link SpellCap MaiDarkInfoLine
hi! link SpellRare MaiDarkInfoLine

hi! link Constant MaiDarkConstants
hi! link String MaiDarkStringColor
hi! link Character MaiDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MaiDarkFg
hi! link Function MaiDarkClassName

hi! link Statement MaiDarkKeyword
hi! link Conditional MaiDarkKeyword
hi! link Repeat MaiDarkKeyword
hi! link Label MaiDarkKeyword
hi! link Operator MaiDarkKeyword
hi! link Keyword MaiDarkKeyword
hi! link Exception MaiDarkKeyword

hi! link PreProc MaiDarkKeyword
hi! link Include MaiDarkKeyword
hi! link Define MaiDarkKeyword
hi! link Macro MaiDarkKeyword
hi! link PreCondit MaiDarkKeyword
hi! link StorageClass MaiDarkKeyword
hi! link Structure MaiDarkKeyword
hi! link Typedef MaiDarkKeyword

hi! link Type MaiDarkKeyColorItalic

hi! link Delimiter MaiDarkFg

hi! link Special MaiDarkKeyword
hi! link SpecialComment MaiDarkKeyColorItalic
hi! link Tag MaiDarkKeyColor
hi! link helpHyperTextJump MaiDarkLink
hi! link helpCommand MaiDarkConstants
hi! link helpExample MaiDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
