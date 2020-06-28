" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'monika_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:monika_dark#palette.fg

let s:bglighter = g:monika_dark#palette.bglighter
let s:bglight   = g:monika_dark#palette.bglight
let s:bg        = g:monika_dark#palette.bg
let s:bgdark    = g:monika_dark#palette.bgdark
let s:bgdarker  = g:monika_dark#palette.bgdarker

let s:comment   = g:monika_dark#palette.comment
let s:selection = g:monika_dark#palette.selection
let s:subtle    = g:monika_dark#palette.subtle

let s:key_color      = g:monika_dark#palette.key_color
let s:class_name     = g:monika_dark#palette.class_name
let s:parameter_color    = g:monika_dark#palette.parameter_color
let s:keyword_color      = g:monika_dark#palette.keyword_color
let s:constants_color    = g:monika_dark#palette.constants_color
let s:red       = g:monika_dark#palette.red
let s:string_color    = g:monika_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:monika_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:monika_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:monika_dark_bold')
  let g:monika_dark_bold = 1
endif

if !exists('g:monika_dark_italic')
  let g:monika_dark_italic = 1
endif

if !exists('g:monika_dark_underline')
  let g:monika_dark_underline = 1
endif

if !exists('g:monika_dark_undercurl') && g:monika_dark_underline != 0
  let g:monika_dark_undercurl = 1
endif

if !exists('g:monika_dark_inverse')
  let g:monika_dark_inverse = 1
endif

if !exists('g:monika_dark_colorterm')
  let g:monika_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:monika_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:monika_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:monika_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:monika_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:monika_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('MonikaDarkBgLight', s:none, s:bglight)
call s:h('MonikaDarkBgLighter', s:none, s:bglighter)
call s:h('MonikaDarkBgDark', s:none, s:bgdark)
call s:h('MonikaDarkBgDarker', s:none, s:bgdarker)

call s:h('MonikaDarkFg', s:fg)
call s:h('MonikaDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MonikaDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MonikaDarkComment', s:comment)
call s:h('MonikaDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MonikaDarkSelection', s:none, s:selection)

call s:h('MonikaDarkSubtle', s:subtle)

call s:h('MonikaDarkKeyColor', s:key_color)
call s:h('MonikaDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MonikaDarkClassName', s:class_name)
call s:h('MonikaDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MonikaDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MonikaDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MonikaDarkParameter', s:parameter_color)
call s:h('MonikaDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MonikaDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MonikaDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MonikaDarkParameterInverse', s:bg, s:parameter_color)

call s:h('MonikaDarkKeyword', s:keyword_color)
call s:h('MonikaDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MonikaDarkConstants', s:constants_color)
call s:h('MonikaDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MonikaDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MonikaDarkRed', s:red)
call s:h('MonikaDarkRedInverse', s:fg, s:red)

call s:h('MonikaDarkStringColor', s:string_color)
call s:h('MonikaDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MonikaDarkError', s:red, s:none, [], s:red)

call s:h('MonikaDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MonikaDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MonikaDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MonikaDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MonikaDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MonikaDarkBoundary', s:comment, s:bgdark)
call s:h('MonikaDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MonikaDarkDiffChange', s:parameter_color, s:none)
call s:h('MonikaDarkDiffText', s:bg, s:parameter_color)
call s:h('MonikaDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:monika_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MonikaDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MonikaDarkStringColor
hi! link DiffAdd      MonikaDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MonikaDarkDiffChange
hi! link DiffDelete   MonikaDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MonikaDarkDiffText
hi! link Directory    MonikaDarkConstantsBold
hi! link ErrorMsg     MonikaDarkRedInverse
hi! link FoldColumn   MonikaDarkSubtle
hi! link Folded       MonikaDarkBoundary
hi! link IncSearch    MonikaDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MonikaDarkFgBold
hi! link NonText      MonikaDarkSubtle
" hi! link Pmenu        MonikaDarkBgDark
" hi! link PmenuSbar    MonikaDarkBgDark
hi! link PmenuSel     MonikaDarkSelection
hi! link PmenuThumb   MonikaDarkSelection
hi! link Question     MonikaDarkFgBold
hi! link Search       MonikaDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MonikaDarkBoundary
" hi! link TabLineFill  MonikaDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        MonikaDarkClassNameBold
hi! link VertSplit    MonikaDarkBoundary
hi! link Visual       MonikaDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MonikaDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MonikaDarkRed
  hi! link LspDiagnosticsUnderline MonikaDarkFgUnderline
  hi! link LspDiagnosticsInformation MonikaDarkKeyColor
  hi! link LspDiagnosticsHint MonikaDarkKeyColor
  hi! link LspDiagnosticsError MonikaDarkError
  hi! link LspDiagnosticsWarning MonikaDarkParameter
  hi! link LspDiagnosticsUnderlineError MonikaDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint MonikaDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation MonikaDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning MonikaDarkWarnLine
else
  hi! link SpecialKey MonikaDarkSubtle
endif

hi! link Comment MonikaDarkComment
hi! link Underlined MonikaDarkFgUnderline
hi! link Todo MonikaDarkTodo

hi! link Error MonikaDarkError
hi! link SpellBad MonikaDarkErrorLine
hi! link SpellLocal MonikaDarkWarnLine
hi! link SpellCap MonikaDarkInfoLine
hi! link SpellRare MonikaDarkInfoLine

hi! link Constant MonikaDarkConstants
hi! link String MonikaDarkStringColor
hi! link Character MonikaDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MonikaDarkFg
hi! link Function MonikaDarkClassName

hi! link Statement MonikaDarkKeyword
hi! link Conditional MonikaDarkKeyword
hi! link Repeat MonikaDarkKeyword
hi! link Label MonikaDarkKeyword
hi! link Operator MonikaDarkKeyword
hi! link Keyword MonikaDarkKeyword
hi! link Exception MonikaDarkKeyword

hi! link PreProc MonikaDarkKeyword
hi! link Include MonikaDarkKeyword
hi! link Define MonikaDarkKeyword
hi! link Macro MonikaDarkKeyword
hi! link PreCondit MonikaDarkKeyword
hi! link StorageClass MonikaDarkKeyword
hi! link Structure MonikaDarkKeyword
hi! link Typedef MonikaDarkKeyword

hi! link Type MonikaDarkKeyColorItalic

hi! link Delimiter MonikaDarkFg

hi! link Special MonikaDarkKeyword
hi! link SpecialComment MonikaDarkKeyColorItalic
hi! link Tag MonikaDarkKeyColor
hi! link helpHyperTextJump MonikaDarkLink
hi! link helpCommand MonikaDarkConstants
hi! link helpExample MonikaDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
