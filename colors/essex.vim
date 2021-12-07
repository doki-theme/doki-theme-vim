" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'essex'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:essex#palette.fg

let s:bglighter = g:essex#palette.bglighter
let s:bglight   = g:essex#palette.bglight
let s:bg        = g:essex#palette.bg
let s:bgdark    = g:essex#palette.bgdark
let s:bgdarker  = g:essex#palette.bgdarker

let s:comment   = g:essex#palette.comment
let s:selection = g:essex#palette.selection
let s:subtle    = g:essex#palette.subtle

let s:key_color      = g:essex#palette.key_color
let s:class_name     = g:essex#palette.class_name
let s:parameter_color    = g:essex#palette.parameter_color
let s:keyword_color      = g:essex#palette.keyword_color
let s:constants_color    = g:essex#palette.constants_color
let s:red       = g:essex#palette.red
let s:string_color    = g:essex#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:essex#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:essex#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:essex_bold')
  let g:essex_bold = 1
endif

if !exists('g:essex_italic')
  let g:essex_italic = 1
endif

if !exists('g:essex_underline')
  let g:essex_underline = 1
endif

if !exists('g:essex_undercurl') && g:essex_underline != 0
  let g:essex_undercurl = 1
endif

if !exists('g:essex_inverse')
  let g:essex_inverse = 1
endif

if !exists('g:essex_colorterm')
  let g:essex_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:essex_bold == 1 ? 'bold' : 0,
      \ 'italic': g:essex_italic == 1 ? 'italic' : 0,
      \ 'underline': g:essex_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:essex_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:essex_inverse == 1 ? 'inverse' : 0,
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

call s:h('EssexBgLight', s:none, s:bglight)
call s:h('EssexBgLighter', s:none, s:bglighter)
call s:h('EssexBgDark', s:none, s:bgdark)
call s:h('EssexBgDarker', s:none, s:bgdarker)

call s:h('EssexFg', s:fg)
call s:h('EssexFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('EssexFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('EssexComment', s:comment)
call s:h('EssexCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('EssexSelection', s:none, s:selection)

call s:h('EssexSubtle', s:subtle)

call s:h('EssexKeyColor', s:key_color)
call s:h('EssexKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('EssexClassName', s:class_name)
call s:h('EssexClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('EssexClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('EssexClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('EssexParameter', s:parameter_color)
call s:h('EssexParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('EssexParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('EssexParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('EssexParameterInverse', s:bg, s:parameter_color)

call s:h('EssexKeyword', s:keyword_color)
call s:h('EssexKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('EssexConstants', s:constants_color)
call s:h('EssexConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('EssexConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('EssexRed', s:red)
call s:h('EssexRedInverse', s:fg, s:red)

call s:h('EssexStringColor', s:string_color)
call s:h('EssexStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('EssexError', s:red, s:none, [], s:red)

call s:h('EssexErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('EssexWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('EssexInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('EssexTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('EssexSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('EssexBoundary', s:comment, s:bgdark)
call s:h('EssexLink', s:key_color, s:none, [s:attrs.underline])

call s:h('EssexDiffChange', s:parameter_color, s:none)
call s:h('EssexDiffText', s:bg, s:parameter_color)
call s:h('EssexDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:essex_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  EssexBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr EssexStringColor
hi! link DiffAdd      EssexClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   EssexDiffChange
hi! link DiffDelete   EssexDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     EssexDiffText
hi! link Directory    EssexConstantsBold
hi! link ErrorMsg     EssexRedInverse
hi! link FoldColumn   EssexSubtle
hi! link Folded       EssexBoundary
hi! link IncSearch    EssexParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      EssexFgBold
hi! link NonText      EssexSubtle
" hi! link Pmenu        EssexBgDark
" hi! link PmenuSbar    EssexBgDark
hi! link PmenuSel     EssexSelection
hi! link PmenuThumb   EssexSelection
hi! link Question     EssexFgBold
hi! link Search       EssexSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      EssexBoundary
" hi! link TabLineFill  EssexBgDarker
hi! link TabLineSel   Normal
hi! link Title        EssexClassNameBold
hi! link VertSplit    EssexBoundary
hi! link Visual       EssexSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   EssexParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey EssexRed
  hi! link LspDiagnosticsUnderline EssexFgUnderline
  hi! link LspDiagnosticsInformation EssexKeyColor
  hi! link LspDiagnosticsHint EssexKeyColor
  hi! link LspDiagnosticsError EssexError
  hi! link LspDiagnosticsWarning EssexParameter
  hi! link LspDiagnosticsUnderlineError EssexErrorLine
  hi! link LspDiagnosticsUnderlineHint EssexInfoLine
  hi! link LspDiagnosticsUnderlineInformation EssexInfoLine
  hi! link LspDiagnosticsUnderlineWarning EssexWarnLine
else
  hi! link SpecialKey EssexSubtle
endif

hi! link Comment EssexComment
hi! link Underlined EssexFgUnderline
hi! link Todo EssexTodo

hi! link Error EssexError
hi! link SpellBad EssexErrorLine
hi! link SpellLocal EssexWarnLine
hi! link SpellCap EssexInfoLine
hi! link SpellRare EssexInfoLine

hi! link Constant EssexConstants
hi! link String EssexStringColor
hi! link Character EssexKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier EssexFg
hi! link Function EssexClassName

hi! link Statement EssexKeyword
hi! link Conditional EssexKeyword
hi! link Repeat EssexKeyword
hi! link Label EssexKeyword
hi! link Operator EssexKeyword
hi! link Keyword EssexKeyword
hi! link Exception EssexKeyword

hi! link PreProc EssexKeyword
hi! link Include EssexKeyword
hi! link Define EssexKeyword
hi! link Macro EssexKeyword
hi! link PreCondit EssexKeyword
hi! link StorageClass EssexKeyword
hi! link Structure EssexKeyword
hi! link Typedef EssexKeyword

hi! link Type EssexKeyColorItalic

hi! link Delimiter EssexFg

hi! link Special EssexKeyword
hi! link SpecialComment EssexKeyColorItalic
hi! link Tag EssexKeyColor
hi! link helpHyperTextJump EssexLink
hi! link helpCommand EssexConstants
hi! link helpExample EssexClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
