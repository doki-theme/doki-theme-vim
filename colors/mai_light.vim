" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'mai_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:mai_light#palette.fg

let s:bglighter = g:mai_light#palette.bglighter
let s:bglight   = g:mai_light#palette.bglight
let s:bg        = g:mai_light#palette.bg
let s:bgdark    = g:mai_light#palette.bgdark
let s:bgdarker  = g:mai_light#palette.bgdarker

let s:comment   = g:mai_light#palette.comment
let s:selection = g:mai_light#palette.selection
let s:subtle    = g:mai_light#palette.subtle

let s:key_color      = g:mai_light#palette.key_color
let s:class_name     = g:mai_light#palette.class_name
let s:parameter_color    = g:mai_light#palette.parameter_color
let s:keyword_color      = g:mai_light#palette.keyword_color
let s:constants_color    = g:mai_light#palette.constants_color
let s:red       = g:mai_light#palette.red
let s:string_color    = g:mai_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:mai_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:mai_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:mai_light_bold')
  let g:mai_light_bold = 1
endif

if !exists('g:mai_light_italic')
  let g:mai_light_italic = 1
endif

if !exists('g:mai_light_underline')
  let g:mai_light_underline = 1
endif

if !exists('g:mai_light_undercurl') && g:mai_light_underline != 0
  let g:mai_light_undercurl = 1
endif

if !exists('g:mai_light_inverse')
  let g:mai_light_inverse = 1
endif

if !exists('g:mai_light_colorterm')
  let g:mai_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:mai_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:mai_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:mai_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:mai_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:mai_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MaiLightBgLight', s:none, s:bglight)
call s:h('MaiLightBgLighter', s:none, s:bglighter)
call s:h('MaiLightBgDark', s:none, s:bgdark)
call s:h('MaiLightBgDarker', s:none, s:bgdarker)

call s:h('MaiLightFg', s:fg)
call s:h('MaiLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MaiLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MaiLightComment', s:comment)
call s:h('MaiLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MaiLightSelection', s:none, s:selection)

call s:h('MaiLightSubtle', s:subtle)

call s:h('MaiLightKeyColor', s:key_color)
call s:h('MaiLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MaiLightClassName', s:class_name)
call s:h('MaiLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MaiLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MaiLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MaiLightParameter', s:parameter_color)
call s:h('MaiLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MaiLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MaiLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MaiLightParameterInverse', s:bg, s:parameter_color)

call s:h('MaiLightKeyword', s:keyword_color)
call s:h('MaiLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MaiLightConstants', s:constants_color)
call s:h('MaiLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MaiLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MaiLightRed', s:red)
call s:h('MaiLightRedInverse', s:fg, s:red)

call s:h('MaiLightStringColor', s:string_color)
call s:h('MaiLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MaiLightError', s:red, s:none, [], s:red)

call s:h('MaiLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MaiLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MaiLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MaiLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MaiLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MaiLightBoundary', s:comment, s:bgdark)
call s:h('MaiLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MaiLightDiffChange', s:parameter_color, s:none)
call s:h('MaiLightDiffText', s:bg, s:parameter_color)
call s:h('MaiLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:mai_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MaiLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MaiLightStringColor
hi! link DiffAdd      MaiLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MaiLightDiffChange
hi! link DiffDelete   MaiLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MaiLightDiffText
hi! link Directory    MaiLightConstantsBold
hi! link ErrorMsg     MaiLightRedInverse
hi! link FoldColumn   MaiLightSubtle
hi! link Folded       MaiLightBoundary
hi! link IncSearch    MaiLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MaiLightFgBold
hi! link NonText      MaiLightSubtle
" hi! link Pmenu        MaiLightBgDark
" hi! link PmenuSbar    MaiLightBgDark
hi! link PmenuSel     MaiLightSelection
hi! link PmenuThumb   MaiLightSelection
hi! link Question     MaiLightFgBold
hi! link Search       MaiLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MaiLightBoundary
" hi! link TabLineFill  MaiLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MaiLightClassNameBold
hi! link VertSplit    MaiLightBoundary
hi! link Visual       MaiLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MaiLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MaiLightRed
  hi! link LspDiagnosticsUnderline MaiLightFgUnderline
  hi! link LspDiagnosticsInformation MaiLightKeyColor
  hi! link LspDiagnosticsHint MaiLightKeyColor
  hi! link LspDiagnosticsError MaiLightError
  hi! link LspDiagnosticsWarning MaiLightParameter
  hi! link LspDiagnosticsUnderlineError MaiLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MaiLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MaiLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MaiLightWarnLine
else
  hi! link SpecialKey MaiLightSubtle
endif

hi! link Comment MaiLightComment
hi! link Underlined MaiLightFgUnderline
hi! link Todo MaiLightTodo

hi! link Error MaiLightError
hi! link SpellBad MaiLightErrorLine
hi! link SpellLocal MaiLightWarnLine
hi! link SpellCap MaiLightInfoLine
hi! link SpellRare MaiLightInfoLine

hi! link Constant MaiLightConstants
hi! link String MaiLightStringColor
hi! link Character MaiLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MaiLightFg
hi! link Function MaiLightClassName

hi! link Statement MaiLightKeyword
hi! link Conditional MaiLightKeyword
hi! link Repeat MaiLightKeyword
hi! link Label MaiLightKeyword
hi! link Operator MaiLightKeyword
hi! link Keyword MaiLightKeyword
hi! link Exception MaiLightKeyword

hi! link PreProc MaiLightKeyword
hi! link Include MaiLightKeyword
hi! link Define MaiLightKeyword
hi! link Macro MaiLightKeyword
hi! link PreCondit MaiLightKeyword
hi! link StorageClass MaiLightKeyword
hi! link Structure MaiLightKeyword
hi! link Typedef MaiLightKeyword

hi! link Type MaiLightKeyColorItalic

hi! link Delimiter MaiLightFg

hi! link Special MaiLightKeyword
hi! link SpecialComment MaiLightKeyColorItalic
hi! link Tag MaiLightKeyColor
hi! link helpHyperTextJump MaiLightLink
hi! link helpCommand MaiLightConstants
hi! link helpExample MaiLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
