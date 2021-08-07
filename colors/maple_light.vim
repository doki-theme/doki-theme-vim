" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'maple_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:maple_light#palette.fg

let s:bglighter = g:maple_light#palette.bglighter
let s:bglight   = g:maple_light#palette.bglight
let s:bg        = g:maple_light#palette.bg
let s:bgdark    = g:maple_light#palette.bgdark
let s:bgdarker  = g:maple_light#palette.bgdarker

let s:comment   = g:maple_light#palette.comment
let s:selection = g:maple_light#palette.selection
let s:subtle    = g:maple_light#palette.subtle

let s:key_color      = g:maple_light#palette.key_color
let s:class_name     = g:maple_light#palette.class_name
let s:parameter_color    = g:maple_light#palette.parameter_color
let s:keyword_color      = g:maple_light#palette.keyword_color
let s:constants_color    = g:maple_light#palette.constants_color
let s:red       = g:maple_light#palette.red
let s:string_color    = g:maple_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:maple_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:maple_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:maple_light_bold')
  let g:maple_light_bold = 1
endif

if !exists('g:maple_light_italic')
  let g:maple_light_italic = 1
endif

if !exists('g:maple_light_underline')
  let g:maple_light_underline = 1
endif

if !exists('g:maple_light_undercurl') && g:maple_light_underline != 0
  let g:maple_light_undercurl = 1
endif

if !exists('g:maple_light_inverse')
  let g:maple_light_inverse = 1
endif

if !exists('g:maple_light_colorterm')
  let g:maple_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:maple_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:maple_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:maple_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:maple_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:maple_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MapleLightBgLight', s:none, s:bglight)
call s:h('MapleLightBgLighter', s:none, s:bglighter)
call s:h('MapleLightBgDark', s:none, s:bgdark)
call s:h('MapleLightBgDarker', s:none, s:bgdarker)

call s:h('MapleLightFg', s:fg)
call s:h('MapleLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MapleLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MapleLightComment', s:comment)
call s:h('MapleLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MapleLightSelection', s:none, s:selection)

call s:h('MapleLightSubtle', s:subtle)

call s:h('MapleLightKeyColor', s:key_color)
call s:h('MapleLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MapleLightClassName', s:class_name)
call s:h('MapleLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MapleLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MapleLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MapleLightParameter', s:parameter_color)
call s:h('MapleLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MapleLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MapleLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MapleLightParameterInverse', s:bg, s:parameter_color)

call s:h('MapleLightKeyword', s:keyword_color)
call s:h('MapleLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MapleLightConstants', s:constants_color)
call s:h('MapleLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MapleLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MapleLightRed', s:red)
call s:h('MapleLightRedInverse', s:fg, s:red)

call s:h('MapleLightStringColor', s:string_color)
call s:h('MapleLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MapleLightError', s:red, s:none, [], s:red)

call s:h('MapleLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MapleLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MapleLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MapleLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MapleLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MapleLightBoundary', s:comment, s:bgdark)
call s:h('MapleLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MapleLightDiffChange', s:parameter_color, s:none)
call s:h('MapleLightDiffText', s:bg, s:parameter_color)
call s:h('MapleLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:maple_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MapleLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MapleLightStringColor
hi! link DiffAdd      MapleLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MapleLightDiffChange
hi! link DiffDelete   MapleLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MapleLightDiffText
hi! link Directory    MapleLightConstantsBold
hi! link ErrorMsg     MapleLightRedInverse
hi! link FoldColumn   MapleLightSubtle
hi! link Folded       MapleLightBoundary
hi! link IncSearch    MapleLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MapleLightFgBold
hi! link NonText      MapleLightSubtle
" hi! link Pmenu        MapleLightBgDark
" hi! link PmenuSbar    MapleLightBgDark
hi! link PmenuSel     MapleLightSelection
hi! link PmenuThumb   MapleLightSelection
hi! link Question     MapleLightFgBold
hi! link Search       MapleLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MapleLightBoundary
" hi! link TabLineFill  MapleLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MapleLightClassNameBold
hi! link VertSplit    MapleLightBoundary
hi! link Visual       MapleLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MapleLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MapleLightRed
  hi! link LspDiagnosticsUnderline MapleLightFgUnderline
  hi! link LspDiagnosticsInformation MapleLightKeyColor
  hi! link LspDiagnosticsHint MapleLightKeyColor
  hi! link LspDiagnosticsError MapleLightError
  hi! link LspDiagnosticsWarning MapleLightParameter
  hi! link LspDiagnosticsUnderlineError MapleLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MapleLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MapleLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MapleLightWarnLine
else
  hi! link SpecialKey MapleLightSubtle
endif

hi! link Comment MapleLightComment
hi! link Underlined MapleLightFgUnderline
hi! link Todo MapleLightTodo

hi! link Error MapleLightError
hi! link SpellBad MapleLightErrorLine
hi! link SpellLocal MapleLightWarnLine
hi! link SpellCap MapleLightInfoLine
hi! link SpellRare MapleLightInfoLine

hi! link Constant MapleLightConstants
hi! link String MapleLightStringColor
hi! link Character MapleLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MapleLightFg
hi! link Function MapleLightClassName

hi! link Statement MapleLightKeyword
hi! link Conditional MapleLightKeyword
hi! link Repeat MapleLightKeyword
hi! link Label MapleLightKeyword
hi! link Operator MapleLightKeyword
hi! link Keyword MapleLightKeyword
hi! link Exception MapleLightKeyword

hi! link PreProc MapleLightKeyword
hi! link Include MapleLightKeyword
hi! link Define MapleLightKeyword
hi! link Macro MapleLightKeyword
hi! link PreCondit MapleLightKeyword
hi! link StorageClass MapleLightKeyword
hi! link Structure MapleLightKeyword
hi! link Typedef MapleLightKeyword

hi! link Type MapleLightKeyColorItalic

hi! link Delimiter MapleLightFg

hi! link Special MapleLightKeyword
hi! link SpecialComment MapleLightKeyColorItalic
hi! link Tag MapleLightKeyColor
hi! link helpHyperTextJump MapleLightLink
hi! link helpCommand MapleLightConstants
hi! link helpExample MapleLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
