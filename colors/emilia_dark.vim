" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'emilia_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:emilia_dark#palette.fg

let s:bglighter = g:emilia_dark#palette.bglighter
let s:bglight   = g:emilia_dark#palette.bglight
let s:bg        = g:emilia_dark#palette.bg
let s:bgdark    = g:emilia_dark#palette.bgdark
let s:bgdarker  = g:emilia_dark#palette.bgdarker

let s:comment   = g:emilia_dark#palette.comment
let s:selection = g:emilia_dark#palette.selection
let s:subtle    = g:emilia_dark#palette.subtle

let s:key_color      = g:emilia_dark#palette.key_color
let s:class_name     = g:emilia_dark#palette.class_name
let s:parameter_color    = g:emilia_dark#palette.parameter_color
let s:keyword_color      = g:emilia_dark#palette.keyword_color
let s:constants_color    = g:emilia_dark#palette.constants_color
let s:red       = g:emilia_dark#palette.red
let s:string_color    = g:emilia_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:emilia_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:emilia_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:emilia_dark_bold')
  let g:emilia_dark_bold = 1
endif

if !exists('g:emilia_dark_italic')
  let g:emilia_dark_italic = 1
endif

if !exists('g:emilia_dark_underline')
  let g:emilia_dark_underline = 1
endif

if !exists('g:emilia_dark_undercurl') && g:emilia_dark_underline != 0
  let g:emilia_dark_undercurl = 1
endif

if !exists('g:emilia_dark_inverse')
  let g:emilia_dark_inverse = 1
endif

if !exists('g:emilia_dark_colorterm')
  let g:emilia_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:emilia_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:emilia_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:emilia_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:emilia_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:emilia_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('EmiliaDarkBgLight', s:none, s:bglight)
call s:h('EmiliaDarkBgLighter', s:none, s:bglighter)
call s:h('EmiliaDarkBgDark', s:none, s:bgdark)
call s:h('EmiliaDarkBgDarker', s:none, s:bgdarker)

call s:h('EmiliaDarkFg', s:fg)
call s:h('EmiliaDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('EmiliaDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('EmiliaDarkComment', s:comment)
call s:h('EmiliaDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('EmiliaDarkSelection', s:none, s:selection)

call s:h('EmiliaDarkSubtle', s:subtle)

call s:h('EmiliaDarkKeyColor', s:key_color)
call s:h('EmiliaDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('EmiliaDarkClassName', s:class_name)
call s:h('EmiliaDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('EmiliaDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('EmiliaDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('EmiliaDarkParameter', s:parameter_color)
call s:h('EmiliaDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('EmiliaDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('EmiliaDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('EmiliaDarkParameterInverse', s:bg, s:parameter_color)

call s:h('EmiliaDarkKeyword', s:keyword_color)
call s:h('EmiliaDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('EmiliaDarkConstants', s:constants_color)
call s:h('EmiliaDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('EmiliaDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('EmiliaDarkRed', s:red)
call s:h('EmiliaDarkRedInverse', s:fg, s:red)

call s:h('EmiliaDarkStringColor', s:string_color)
call s:h('EmiliaDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('EmiliaDarkError', s:red, s:none, [], s:red)

call s:h('EmiliaDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('EmiliaDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('EmiliaDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('EmiliaDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('EmiliaDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('EmiliaDarkBoundary', s:comment, s:bgdark)
call s:h('EmiliaDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('EmiliaDarkDiffChange', s:parameter_color, s:none)
call s:h('EmiliaDarkDiffText', s:bg, s:parameter_color)
call s:h('EmiliaDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:emilia_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  EmiliaDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr EmiliaDarkStringColor
hi! link DiffAdd      EmiliaDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   EmiliaDarkDiffChange
hi! link DiffDelete   EmiliaDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     EmiliaDarkDiffText
hi! link Directory    EmiliaDarkConstantsBold
hi! link ErrorMsg     EmiliaDarkRedInverse
hi! link FoldColumn   EmiliaDarkSubtle
hi! link Folded       EmiliaDarkBoundary
hi! link IncSearch    EmiliaDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      EmiliaDarkFgBold
hi! link NonText      EmiliaDarkSubtle
" hi! link Pmenu        EmiliaDarkBgDark
" hi! link PmenuSbar    EmiliaDarkBgDark
hi! link PmenuSel     EmiliaDarkSelection
hi! link PmenuThumb   EmiliaDarkSelection
hi! link Question     EmiliaDarkFgBold
hi! link Search       EmiliaDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      EmiliaDarkBoundary
" hi! link TabLineFill  EmiliaDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        EmiliaDarkClassNameBold
hi! link VertSplit    EmiliaDarkBoundary
hi! link Visual       EmiliaDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   EmiliaDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey EmiliaDarkRed
  hi! link LspDiagnosticsUnderline EmiliaDarkFgUnderline
  hi! link LspDiagnosticsInformation EmiliaDarkKeyColor
  hi! link LspDiagnosticsHint EmiliaDarkKeyColor
  hi! link LspDiagnosticsError EmiliaDarkError
  hi! link LspDiagnosticsWarning EmiliaDarkParameter
  hi! link LspDiagnosticsUnderlineError EmiliaDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint EmiliaDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation EmiliaDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning EmiliaDarkWarnLine
else
  hi! link SpecialKey EmiliaDarkSubtle
endif

hi! link Comment EmiliaDarkComment
hi! link Underlined EmiliaDarkFgUnderline
hi! link Todo EmiliaDarkTodo

hi! link Error EmiliaDarkError
hi! link SpellBad EmiliaDarkErrorLine
hi! link SpellLocal EmiliaDarkWarnLine
hi! link SpellCap EmiliaDarkInfoLine
hi! link SpellRare EmiliaDarkInfoLine

hi! link Constant EmiliaDarkConstants
hi! link String EmiliaDarkStringColor
hi! link Character EmiliaDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier EmiliaDarkFg
hi! link Function EmiliaDarkClassName

hi! link Statement EmiliaDarkKeyword
hi! link Conditional EmiliaDarkKeyword
hi! link Repeat EmiliaDarkKeyword
hi! link Label EmiliaDarkKeyword
hi! link Operator EmiliaDarkKeyword
hi! link Keyword EmiliaDarkKeyword
hi! link Exception EmiliaDarkKeyword

hi! link PreProc EmiliaDarkKeyword
hi! link Include EmiliaDarkKeyword
hi! link Define EmiliaDarkKeyword
hi! link Macro EmiliaDarkKeyword
hi! link PreCondit EmiliaDarkKeyword
hi! link StorageClass EmiliaDarkKeyword
hi! link Structure EmiliaDarkKeyword
hi! link Typedef EmiliaDarkKeyword

hi! link Type EmiliaDarkKeyColorItalic

hi! link Delimiter EmiliaDarkFg

hi! link Special EmiliaDarkKeyword
hi! link SpecialComment EmiliaDarkKeyColorItalic
hi! link Tag EmiliaDarkKeyColor
hi! link helpHyperTextJump EmiliaDarkLink
hi! link helpCommand EmiliaDarkConstants
hi! link helpExample EmiliaDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
