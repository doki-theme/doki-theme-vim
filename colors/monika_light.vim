" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'monika_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:monika_light#palette.fg

let s:bglighter = g:monika_light#palette.bglighter
let s:bglight   = g:monika_light#palette.bglight
let s:bg        = g:monika_light#palette.bg
let s:bgdark    = g:monika_light#palette.bgdark
let s:bgdarker  = g:monika_light#palette.bgdarker

let s:comment   = g:monika_light#palette.comment
let s:selection = g:monika_light#palette.selection
let s:subtle    = g:monika_light#palette.subtle

let s:key_color      = g:monika_light#palette.key_color
let s:class_name     = g:monika_light#palette.class_name
let s:parameter_color    = g:monika_light#palette.parameter_color
let s:keyword_color      = g:monika_light#palette.keyword_color
let s:constants_color    = g:monika_light#palette.constants_color
let s:red       = g:monika_light#palette.red
let s:string_color    = g:monika_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:monika_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:monika_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:monika_light_bold')
  let g:monika_light_bold = 1
endif

if !exists('g:monika_light_italic')
  let g:monika_light_italic = 1
endif

if !exists('g:monika_light_underline')
  let g:monika_light_underline = 1
endif

if !exists('g:monika_light_undercurl') && g:monika_light_underline != 0
  let g:monika_light_undercurl = 1
endif

if !exists('g:monika_light_inverse')
  let g:monika_light_inverse = 1
endif

if !exists('g:monika_light_colorterm')
  let g:monika_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:monika_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:monika_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:monika_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:monika_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:monika_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('MonikaLightBgLight', s:none, s:bglight)
call s:h('MonikaLightBgLighter', s:none, s:bglighter)
call s:h('MonikaLightBgDark', s:none, s:bgdark)
call s:h('MonikaLightBgDarker', s:none, s:bgdarker)

call s:h('MonikaLightFg', s:fg)
call s:h('MonikaLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MonikaLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MonikaLightComment', s:comment)
call s:h('MonikaLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MonikaLightSelection', s:none, s:selection)

call s:h('MonikaLightSubtle', s:subtle)

call s:h('MonikaLightKeyColor', s:key_color)
call s:h('MonikaLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MonikaLightClassName', s:class_name)
call s:h('MonikaLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MonikaLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MonikaLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MonikaLightParameter', s:parameter_color)
call s:h('MonikaLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MonikaLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MonikaLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MonikaLightParameterInverse', s:bg, s:parameter_color)

call s:h('MonikaLightKeyword', s:keyword_color)
call s:h('MonikaLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MonikaLightConstants', s:constants_color)
call s:h('MonikaLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MonikaLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MonikaLightRed', s:red)
call s:h('MonikaLightRedInverse', s:fg, s:red)

call s:h('MonikaLightStringColor', s:string_color)
call s:h('MonikaLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MonikaLightError', s:red, s:none, [], s:red)

call s:h('MonikaLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MonikaLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MonikaLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MonikaLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MonikaLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MonikaLightBoundary', s:comment, s:bgdark)
call s:h('MonikaLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MonikaLightDiffChange', s:parameter_color, s:none)
call s:h('MonikaLightDiffText', s:bg, s:parameter_color)
call s:h('MonikaLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:monika_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MonikaLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MonikaLightStringColor
hi! link DiffAdd      MonikaLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MonikaLightDiffChange
hi! link DiffDelete   MonikaLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MonikaLightDiffText
hi! link Directory    MonikaLightConstantsBold
hi! link ErrorMsg     MonikaLightRedInverse
hi! link FoldColumn   MonikaLightSubtle
hi! link Folded       MonikaLightBoundary
hi! link IncSearch    MonikaLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MonikaLightFgBold
hi! link NonText      MonikaLightSubtle
" hi! link Pmenu        MonikaLightBgDark
" hi! link PmenuSbar    MonikaLightBgDark
hi! link PmenuSel     MonikaLightSelection
hi! link PmenuThumb   MonikaLightSelection
hi! link Question     MonikaLightFgBold
hi! link Search       MonikaLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MonikaLightBoundary
" hi! link TabLineFill  MonikaLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        MonikaLightClassNameBold
hi! link VertSplit    MonikaLightBoundary
hi! link Visual       MonikaLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MonikaLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MonikaLightRed
  hi! link LspDiagnosticsUnderline MonikaLightFgUnderline
  hi! link LspDiagnosticsInformation MonikaLightKeyColor
  hi! link LspDiagnosticsHint MonikaLightKeyColor
  hi! link LspDiagnosticsError MonikaLightError
  hi! link LspDiagnosticsWarning MonikaLightParameter
  hi! link LspDiagnosticsUnderlineError MonikaLightErrorLine
  hi! link LspDiagnosticsUnderlineHint MonikaLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation MonikaLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning MonikaLightWarnLine
else
  hi! link SpecialKey MonikaLightSubtle
endif

hi! link Comment MonikaLightComment
hi! link Underlined MonikaLightFgUnderline
hi! link Todo MonikaLightTodo

hi! link Error MonikaLightError
hi! link SpellBad MonikaLightErrorLine
hi! link SpellLocal MonikaLightWarnLine
hi! link SpellCap MonikaLightInfoLine
hi! link SpellRare MonikaLightInfoLine

hi! link Constant MonikaLightConstants
hi! link String MonikaLightStringColor
hi! link Character MonikaLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MonikaLightFg
hi! link Function MonikaLightClassName

hi! link Statement MonikaLightKeyword
hi! link Conditional MonikaLightKeyword
hi! link Repeat MonikaLightKeyword
hi! link Label MonikaLightKeyword
hi! link Operator MonikaLightKeyword
hi! link Keyword MonikaLightKeyword
hi! link Exception MonikaLightKeyword

hi! link PreProc MonikaLightKeyword
hi! link Include MonikaLightKeyword
hi! link Define MonikaLightKeyword
hi! link Macro MonikaLightKeyword
hi! link PreCondit MonikaLightKeyword
hi! link StorageClass MonikaLightKeyword
hi! link Structure MonikaLightKeyword
hi! link Typedef MonikaLightKeyword

hi! link Type MonikaLightKeyColorItalic

hi! link Delimiter MonikaLightFg

hi! link Special MonikaLightKeyword
hi! link SpecialComment MonikaLightKeyColorItalic
hi! link Tag MonikaLightKeyColor
hi! link helpHyperTextJump MonikaLightLink
hi! link helpCommand MonikaLightConstants
hi! link helpExample MonikaLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
