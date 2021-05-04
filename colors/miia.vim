" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'miia'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:miia#palette.fg

let s:bglighter = g:miia#palette.bglighter
let s:bglight   = g:miia#palette.bglight
let s:bg        = g:miia#palette.bg
let s:bgdark    = g:miia#palette.bgdark
let s:bgdarker  = g:miia#palette.bgdarker

let s:comment   = g:miia#palette.comment
let s:selection = g:miia#palette.selection
let s:subtle    = g:miia#palette.subtle

let s:key_color      = g:miia#palette.key_color
let s:class_name     = g:miia#palette.class_name
let s:parameter_color    = g:miia#palette.parameter_color
let s:keyword_color      = g:miia#palette.keyword_color
let s:constants_color    = g:miia#palette.constants_color
let s:red       = g:miia#palette.red
let s:string_color    = g:miia#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:miia#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:miia#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:miia_bold')
  let g:miia_bold = 1
endif

if !exists('g:miia_italic')
  let g:miia_italic = 1
endif

if !exists('g:miia_underline')
  let g:miia_underline = 1
endif

if !exists('g:miia_undercurl') && g:miia_underline != 0
  let g:miia_undercurl = 1
endif

if !exists('g:miia_inverse')
  let g:miia_inverse = 1
endif

if !exists('g:miia_colorterm')
  let g:miia_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:miia_bold == 1 ? 'bold' : 0,
      \ 'italic': g:miia_italic == 1 ? 'italic' : 0,
      \ 'underline': g:miia_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:miia_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:miia_inverse == 1 ? 'inverse' : 0,
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

call s:h('MiiaBgLight', s:none, s:bglight)
call s:h('MiiaBgLighter', s:none, s:bglighter)
call s:h('MiiaBgDark', s:none, s:bgdark)
call s:h('MiiaBgDarker', s:none, s:bgdarker)

call s:h('MiiaFg', s:fg)
call s:h('MiiaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MiiaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MiiaComment', s:comment)
call s:h('MiiaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MiiaSelection', s:none, s:selection)

call s:h('MiiaSubtle', s:subtle)

call s:h('MiiaKeyColor', s:key_color)
call s:h('MiiaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MiiaClassName', s:class_name)
call s:h('MiiaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MiiaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MiiaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MiiaParameter', s:parameter_color)
call s:h('MiiaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MiiaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MiiaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MiiaParameterInverse', s:bg, s:parameter_color)

call s:h('MiiaKeyword', s:keyword_color)
call s:h('MiiaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MiiaConstants', s:constants_color)
call s:h('MiiaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MiiaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MiiaRed', s:red)
call s:h('MiiaRedInverse', s:fg, s:red)

call s:h('MiiaStringColor', s:string_color)
call s:h('MiiaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MiiaError', s:red, s:none, [], s:red)

call s:h('MiiaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MiiaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MiiaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MiiaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MiiaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MiiaBoundary', s:comment, s:bgdark)
call s:h('MiiaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MiiaDiffChange', s:parameter_color, s:none)
call s:h('MiiaDiffText', s:bg, s:parameter_color)
call s:h('MiiaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:miia_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MiiaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MiiaStringColor
hi! link DiffAdd      MiiaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MiiaDiffChange
hi! link DiffDelete   MiiaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MiiaDiffText
hi! link Directory    MiiaConstantsBold
hi! link ErrorMsg     MiiaRedInverse
hi! link FoldColumn   MiiaSubtle
hi! link Folded       MiiaBoundary
hi! link IncSearch    MiiaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MiiaFgBold
hi! link NonText      MiiaSubtle
" hi! link Pmenu        MiiaBgDark
" hi! link PmenuSbar    MiiaBgDark
hi! link PmenuSel     MiiaSelection
hi! link PmenuThumb   MiiaSelection
hi! link Question     MiiaFgBold
hi! link Search       MiiaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MiiaBoundary
" hi! link TabLineFill  MiiaBgDarker
hi! link TabLineSel   Normal
hi! link Title        MiiaClassNameBold
hi! link VertSplit    MiiaBoundary
hi! link Visual       MiiaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MiiaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MiiaRed
  hi! link LspDiagnosticsUnderline MiiaFgUnderline
  hi! link LspDiagnosticsInformation MiiaKeyColor
  hi! link LspDiagnosticsHint MiiaKeyColor
  hi! link LspDiagnosticsError MiiaError
  hi! link LspDiagnosticsWarning MiiaParameter
  hi! link LspDiagnosticsUnderlineError MiiaErrorLine
  hi! link LspDiagnosticsUnderlineHint MiiaInfoLine
  hi! link LspDiagnosticsUnderlineInformation MiiaInfoLine
  hi! link LspDiagnosticsUnderlineWarning MiiaWarnLine
else
  hi! link SpecialKey MiiaSubtle
endif

hi! link Comment MiiaComment
hi! link Underlined MiiaFgUnderline
hi! link Todo MiiaTodo

hi! link Error MiiaError
hi! link SpellBad MiiaErrorLine
hi! link SpellLocal MiiaWarnLine
hi! link SpellCap MiiaInfoLine
hi! link SpellRare MiiaInfoLine

hi! link Constant MiiaConstants
hi! link String MiiaStringColor
hi! link Character MiiaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MiiaFg
hi! link Function MiiaClassName

hi! link Statement MiiaKeyword
hi! link Conditional MiiaKeyword
hi! link Repeat MiiaKeyword
hi! link Label MiiaKeyword
hi! link Operator MiiaKeyword
hi! link Keyword MiiaKeyword
hi! link Exception MiiaKeyword

hi! link PreProc MiiaKeyword
hi! link Include MiiaKeyword
hi! link Define MiiaKeyword
hi! link Macro MiiaKeyword
hi! link PreCondit MiiaKeyword
hi! link StorageClass MiiaKeyword
hi! link Structure MiiaKeyword
hi! link Typedef MiiaKeyword

hi! link Type MiiaKeyColorItalic

hi! link Delimiter MiiaFg

hi! link Special MiiaKeyword
hi! link SpecialComment MiiaKeyColorItalic
hi! link Tag MiiaKeyColor
hi! link helpHyperTextJump MiiaLink
hi! link helpCommand MiiaConstants
hi! link helpExample MiiaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
