" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'emilia_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:emilia_light#palette.fg

let s:bglighter = g:emilia_light#palette.bglighter
let s:bglight   = g:emilia_light#palette.bglight
let s:bg        = g:emilia_light#palette.bg
let s:bgdark    = g:emilia_light#palette.bgdark
let s:bgdarker  = g:emilia_light#palette.bgdarker

let s:comment   = g:emilia_light#palette.comment
let s:selection = g:emilia_light#palette.selection
let s:subtle    = g:emilia_light#palette.subtle

let s:key_color      = g:emilia_light#palette.key_color
let s:class_name     = g:emilia_light#palette.class_name
let s:parameter_color    = g:emilia_light#palette.parameter_color
let s:keyword_color      = g:emilia_light#palette.keyword_color
let s:constants_color    = g:emilia_light#palette.constants_color
let s:red       = g:emilia_light#palette.red
let s:string_color    = g:emilia_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:emilia_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:emilia_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:emilia_light_bold')
  let g:emilia_light_bold = 1
endif

if !exists('g:emilia_light_italic')
  let g:emilia_light_italic = 1
endif

if !exists('g:emilia_light_underline')
  let g:emilia_light_underline = 1
endif

if !exists('g:emilia_light_undercurl') && g:emilia_light_underline != 0
  let g:emilia_light_undercurl = 1
endif

if !exists('g:emilia_light_inverse')
  let g:emilia_light_inverse = 1
endif

if !exists('g:emilia_light_colorterm')
  let g:emilia_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:emilia_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:emilia_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:emilia_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:emilia_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:emilia_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('EmiliaLightBgLight', s:none, s:bglight)
call s:h('EmiliaLightBgLighter', s:none, s:bglighter)
call s:h('EmiliaLightBgDark', s:none, s:bgdark)
call s:h('EmiliaLightBgDarker', s:none, s:bgdarker)

call s:h('EmiliaLightFg', s:fg)
call s:h('EmiliaLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('EmiliaLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('EmiliaLightComment', s:comment)
call s:h('EmiliaLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('EmiliaLightSelection', s:none, s:selection)

call s:h('EmiliaLightSubtle', s:subtle)

call s:h('EmiliaLightKeyColor', s:key_color)
call s:h('EmiliaLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('EmiliaLightClassName', s:class_name)
call s:h('EmiliaLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('EmiliaLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('EmiliaLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('EmiliaLightParameter', s:parameter_color)
call s:h('EmiliaLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('EmiliaLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('EmiliaLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('EmiliaLightParameterInverse', s:bg, s:parameter_color)

call s:h('EmiliaLightKeyword', s:keyword_color)
call s:h('EmiliaLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('EmiliaLightConstants', s:constants_color)
call s:h('EmiliaLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('EmiliaLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('EmiliaLightRed', s:red)
call s:h('EmiliaLightRedInverse', s:fg, s:red)

call s:h('EmiliaLightStringColor', s:string_color)
call s:h('EmiliaLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('EmiliaLightError', s:red, s:none, [], s:red)

call s:h('EmiliaLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('EmiliaLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('EmiliaLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('EmiliaLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('EmiliaLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('EmiliaLightBoundary', s:comment, s:bgdark)
call s:h('EmiliaLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('EmiliaLightDiffChange', s:parameter_color, s:none)
call s:h('EmiliaLightDiffText', s:bg, s:parameter_color)
call s:h('EmiliaLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:emilia_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  EmiliaLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr EmiliaLightStringColor
hi! link DiffAdd      EmiliaLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   EmiliaLightDiffChange
hi! link DiffDelete   EmiliaLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     EmiliaLightDiffText
hi! link Directory    EmiliaLightConstantsBold
hi! link ErrorMsg     EmiliaLightRedInverse
hi! link FoldColumn   EmiliaLightSubtle
hi! link Folded       EmiliaLightBoundary
hi! link IncSearch    EmiliaLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      EmiliaLightFgBold
hi! link NonText      EmiliaLightSubtle
" hi! link Pmenu        EmiliaLightBgDark
" hi! link PmenuSbar    EmiliaLightBgDark
hi! link PmenuSel     EmiliaLightSelection
hi! link PmenuThumb   EmiliaLightSelection
hi! link Question     EmiliaLightFgBold
hi! link Search       EmiliaLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      EmiliaLightBoundary
" hi! link TabLineFill  EmiliaLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        EmiliaLightClassNameBold
hi! link VertSplit    EmiliaLightBoundary
hi! link Visual       EmiliaLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   EmiliaLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey EmiliaLightRed
  hi! link LspDiagnosticsUnderline EmiliaLightFgUnderline
  hi! link LspDiagnosticsInformation EmiliaLightKeyColor
  hi! link LspDiagnosticsHint EmiliaLightKeyColor
  hi! link LspDiagnosticsError EmiliaLightError
  hi! link LspDiagnosticsWarning EmiliaLightParameter
  hi! link LspDiagnosticsUnderlineError EmiliaLightErrorLine
  hi! link LspDiagnosticsUnderlineHint EmiliaLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation EmiliaLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning EmiliaLightWarnLine
else
  hi! link SpecialKey EmiliaLightSubtle
endif

hi! link Comment EmiliaLightComment
hi! link Underlined EmiliaLightFgUnderline
hi! link Todo EmiliaLightTodo

hi! link Error EmiliaLightError
hi! link SpellBad EmiliaLightErrorLine
hi! link SpellLocal EmiliaLightWarnLine
hi! link SpellCap EmiliaLightInfoLine
hi! link SpellRare EmiliaLightInfoLine

hi! link Constant EmiliaLightConstants
hi! link String EmiliaLightStringColor
hi! link Character EmiliaLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier EmiliaLightFg
hi! link Function EmiliaLightClassName

hi! link Statement EmiliaLightKeyword
hi! link Conditional EmiliaLightKeyword
hi! link Repeat EmiliaLightKeyword
hi! link Label EmiliaLightKeyword
hi! link Operator EmiliaLightKeyword
hi! link Keyword EmiliaLightKeyword
hi! link Exception EmiliaLightKeyword

hi! link PreProc EmiliaLightKeyword
hi! link Include EmiliaLightKeyword
hi! link Define EmiliaLightKeyword
hi! link Macro EmiliaLightKeyword
hi! link PreCondit EmiliaLightKeyword
hi! link StorageClass EmiliaLightKeyword
hi! link Structure EmiliaLightKeyword
hi! link Typedef EmiliaLightKeyword

hi! link Type EmiliaLightKeyColorItalic

hi! link Delimiter EmiliaLightFg

hi! link Special EmiliaLightKeyword
hi! link SpecialComment EmiliaLightKeyColorItalic
hi! link Tag EmiliaLightKeyColor
hi! link helpHyperTextJump EmiliaLightLink
hi! link helpCommand EmiliaLightConstants
hi! link helpExample EmiliaLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
