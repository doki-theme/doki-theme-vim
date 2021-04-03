" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'maika'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:maika#palette.fg

let s:bglighter = g:maika#palette.bglighter
let s:bglight   = g:maika#palette.bglight
let s:bg        = g:maika#palette.bg
let s:bgdark    = g:maika#palette.bgdark
let s:bgdarker  = g:maika#palette.bgdarker

let s:comment   = g:maika#palette.comment
let s:selection = g:maika#palette.selection
let s:subtle    = g:maika#palette.subtle

let s:key_color      = g:maika#palette.key_color
let s:class_name     = g:maika#palette.class_name
let s:parameter_color    = g:maika#palette.parameter_color
let s:keyword_color      = g:maika#palette.keyword_color
let s:constants_color    = g:maika#palette.constants_color
let s:red       = g:maika#palette.red
let s:string_color    = g:maika#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:maika#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:maika#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:maika_bold')
  let g:maika_bold = 1
endif

if !exists('g:maika_italic')
  let g:maika_italic = 1
endif

if !exists('g:maika_underline')
  let g:maika_underline = 1
endif

if !exists('g:maika_undercurl') && g:maika_underline != 0
  let g:maika_undercurl = 1
endif

if !exists('g:maika_inverse')
  let g:maika_inverse = 1
endif

if !exists('g:maika_colorterm')
  let g:maika_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:maika_bold == 1 ? 'bold' : 0,
      \ 'italic': g:maika_italic == 1 ? 'italic' : 0,
      \ 'underline': g:maika_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:maika_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:maika_inverse == 1 ? 'inverse' : 0,
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

call s:h('MaikaBgLight', s:none, s:bglight)
call s:h('MaikaBgLighter', s:none, s:bglighter)
call s:h('MaikaBgDark', s:none, s:bgdark)
call s:h('MaikaBgDarker', s:none, s:bgdarker)

call s:h('MaikaFg', s:fg)
call s:h('MaikaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MaikaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MaikaComment', s:comment)
call s:h('MaikaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MaikaSelection', s:none, s:selection)

call s:h('MaikaSubtle', s:subtle)

call s:h('MaikaKeyColor', s:key_color)
call s:h('MaikaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MaikaClassName', s:class_name)
call s:h('MaikaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MaikaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MaikaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MaikaParameter', s:parameter_color)
call s:h('MaikaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MaikaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MaikaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MaikaParameterInverse', s:bg, s:parameter_color)

call s:h('MaikaKeyword', s:keyword_color)
call s:h('MaikaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MaikaConstants', s:constants_color)
call s:h('MaikaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MaikaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MaikaRed', s:red)
call s:h('MaikaRedInverse', s:fg, s:red)

call s:h('MaikaStringColor', s:string_color)
call s:h('MaikaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MaikaError', s:red, s:none, [], s:red)

call s:h('MaikaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MaikaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MaikaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MaikaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MaikaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MaikaBoundary', s:comment, s:bgdark)
call s:h('MaikaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MaikaDiffChange', s:parameter_color, s:none)
call s:h('MaikaDiffText', s:bg, s:parameter_color)
call s:h('MaikaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:maika_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MaikaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MaikaStringColor
hi! link DiffAdd      MaikaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MaikaDiffChange
hi! link DiffDelete   MaikaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MaikaDiffText
hi! link Directory    MaikaConstantsBold
hi! link ErrorMsg     MaikaRedInverse
hi! link FoldColumn   MaikaSubtle
hi! link Folded       MaikaBoundary
hi! link IncSearch    MaikaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MaikaFgBold
hi! link NonText      MaikaSubtle
" hi! link Pmenu        MaikaBgDark
" hi! link PmenuSbar    MaikaBgDark
hi! link PmenuSel     MaikaSelection
hi! link PmenuThumb   MaikaSelection
hi! link Question     MaikaFgBold
hi! link Search       MaikaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MaikaBoundary
" hi! link TabLineFill  MaikaBgDarker
hi! link TabLineSel   Normal
hi! link Title        MaikaClassNameBold
hi! link VertSplit    MaikaBoundary
hi! link Visual       MaikaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MaikaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MaikaRed
  hi! link LspDiagnosticsUnderline MaikaFgUnderline
  hi! link LspDiagnosticsInformation MaikaKeyColor
  hi! link LspDiagnosticsHint MaikaKeyColor
  hi! link LspDiagnosticsError MaikaError
  hi! link LspDiagnosticsWarning MaikaParameter
  hi! link LspDiagnosticsUnderlineError MaikaErrorLine
  hi! link LspDiagnosticsUnderlineHint MaikaInfoLine
  hi! link LspDiagnosticsUnderlineInformation MaikaInfoLine
  hi! link LspDiagnosticsUnderlineWarning MaikaWarnLine
else
  hi! link SpecialKey MaikaSubtle
endif

hi! link Comment MaikaComment
hi! link Underlined MaikaFgUnderline
hi! link Todo MaikaTodo

hi! link Error MaikaError
hi! link SpellBad MaikaErrorLine
hi! link SpellLocal MaikaWarnLine
hi! link SpellCap MaikaInfoLine
hi! link SpellRare MaikaInfoLine

hi! link Constant MaikaConstants
hi! link String MaikaStringColor
hi! link Character MaikaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MaikaFg
hi! link Function MaikaClassName

hi! link Statement MaikaKeyword
hi! link Conditional MaikaKeyword
hi! link Repeat MaikaKeyword
hi! link Label MaikaKeyword
hi! link Operator MaikaKeyword
hi! link Keyword MaikaKeyword
hi! link Exception MaikaKeyword

hi! link PreProc MaikaKeyword
hi! link Include MaikaKeyword
hi! link Define MaikaKeyword
hi! link Macro MaikaKeyword
hi! link PreCondit MaikaKeyword
hi! link StorageClass MaikaKeyword
hi! link Structure MaikaKeyword
hi! link Typedef MaikaKeyword

hi! link Type MaikaKeyColorItalic

hi! link Delimiter MaikaFg

hi! link Special MaikaKeyword
hi! link SpecialComment MaikaKeyColorItalic
hi! link Tag MaikaKeyColor
hi! link helpHyperTextJump MaikaLink
hi! link helpCommand MaikaConstants
hi! link helpExample MaikaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
