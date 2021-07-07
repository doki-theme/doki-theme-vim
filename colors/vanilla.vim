" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'vanilla'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:vanilla#palette.fg

let s:bglighter = g:vanilla#palette.bglighter
let s:bglight   = g:vanilla#palette.bglight
let s:bg        = g:vanilla#palette.bg
let s:bgdark    = g:vanilla#palette.bgdark
let s:bgdarker  = g:vanilla#palette.bgdarker

let s:comment   = g:vanilla#palette.comment
let s:selection = g:vanilla#palette.selection
let s:subtle    = g:vanilla#palette.subtle

let s:key_color      = g:vanilla#palette.key_color
let s:class_name     = g:vanilla#palette.class_name
let s:parameter_color    = g:vanilla#palette.parameter_color
let s:keyword_color      = g:vanilla#palette.keyword_color
let s:constants_color    = g:vanilla#palette.constants_color
let s:red       = g:vanilla#palette.red
let s:string_color    = g:vanilla#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:vanilla#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:vanilla#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:vanilla_bold')
  let g:vanilla_bold = 1
endif

if !exists('g:vanilla_italic')
  let g:vanilla_italic = 1
endif

if !exists('g:vanilla_underline')
  let g:vanilla_underline = 1
endif

if !exists('g:vanilla_undercurl') && g:vanilla_underline != 0
  let g:vanilla_undercurl = 1
endif

if !exists('g:vanilla_inverse')
  let g:vanilla_inverse = 1
endif

if !exists('g:vanilla_colorterm')
  let g:vanilla_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:vanilla_bold == 1 ? 'bold' : 0,
      \ 'italic': g:vanilla_italic == 1 ? 'italic' : 0,
      \ 'underline': g:vanilla_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:vanilla_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:vanilla_inverse == 1 ? 'inverse' : 0,
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

call s:h('VanillaBgLight', s:none, s:bglight)
call s:h('VanillaBgLighter', s:none, s:bglighter)
call s:h('VanillaBgDark', s:none, s:bgdark)
call s:h('VanillaBgDarker', s:none, s:bgdarker)

call s:h('VanillaFg', s:fg)
call s:h('VanillaFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('VanillaFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('VanillaComment', s:comment)
call s:h('VanillaCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('VanillaSelection', s:none, s:selection)

call s:h('VanillaSubtle', s:subtle)

call s:h('VanillaKeyColor', s:key_color)
call s:h('VanillaKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('VanillaClassName', s:class_name)
call s:h('VanillaClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('VanillaClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('VanillaClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('VanillaParameter', s:parameter_color)
call s:h('VanillaParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('VanillaParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('VanillaParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('VanillaParameterInverse', s:bg, s:parameter_color)

call s:h('VanillaKeyword', s:keyword_color)
call s:h('VanillaKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('VanillaConstants', s:constants_color)
call s:h('VanillaConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('VanillaConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('VanillaRed', s:red)
call s:h('VanillaRedInverse', s:fg, s:red)

call s:h('VanillaStringColor', s:string_color)
call s:h('VanillaStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('VanillaError', s:red, s:none, [], s:red)

call s:h('VanillaErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('VanillaWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('VanillaInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('VanillaTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('VanillaSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('VanillaBoundary', s:comment, s:bgdark)
call s:h('VanillaLink', s:key_color, s:none, [s:attrs.underline])

call s:h('VanillaDiffChange', s:parameter_color, s:none)
call s:h('VanillaDiffText', s:bg, s:parameter_color)
call s:h('VanillaDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:vanilla_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  VanillaBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr VanillaStringColor
hi! link DiffAdd      VanillaClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   VanillaDiffChange
hi! link DiffDelete   VanillaDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     VanillaDiffText
hi! link Directory    VanillaConstantsBold
hi! link ErrorMsg     VanillaRedInverse
hi! link FoldColumn   VanillaSubtle
hi! link Folded       VanillaBoundary
hi! link IncSearch    VanillaParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      VanillaFgBold
hi! link NonText      VanillaSubtle
" hi! link Pmenu        VanillaBgDark
" hi! link PmenuSbar    VanillaBgDark
hi! link PmenuSel     VanillaSelection
hi! link PmenuThumb   VanillaSelection
hi! link Question     VanillaFgBold
hi! link Search       VanillaSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      VanillaBoundary
" hi! link TabLineFill  VanillaBgDarker
hi! link TabLineSel   Normal
hi! link Title        VanillaClassNameBold
hi! link VertSplit    VanillaBoundary
hi! link Visual       VanillaSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   VanillaParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey VanillaRed
  hi! link LspDiagnosticsUnderline VanillaFgUnderline
  hi! link LspDiagnosticsInformation VanillaKeyColor
  hi! link LspDiagnosticsHint VanillaKeyColor
  hi! link LspDiagnosticsError VanillaError
  hi! link LspDiagnosticsWarning VanillaParameter
  hi! link LspDiagnosticsUnderlineError VanillaErrorLine
  hi! link LspDiagnosticsUnderlineHint VanillaInfoLine
  hi! link LspDiagnosticsUnderlineInformation VanillaInfoLine
  hi! link LspDiagnosticsUnderlineWarning VanillaWarnLine
else
  hi! link SpecialKey VanillaSubtle
endif

hi! link Comment VanillaComment
hi! link Underlined VanillaFgUnderline
hi! link Todo VanillaTodo

hi! link Error VanillaError
hi! link SpellBad VanillaErrorLine
hi! link SpellLocal VanillaWarnLine
hi! link SpellCap VanillaInfoLine
hi! link SpellRare VanillaInfoLine

hi! link Constant VanillaConstants
hi! link String VanillaStringColor
hi! link Character VanillaKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier VanillaFg
hi! link Function VanillaClassName

hi! link Statement VanillaKeyword
hi! link Conditional VanillaKeyword
hi! link Repeat VanillaKeyword
hi! link Label VanillaKeyword
hi! link Operator VanillaKeyword
hi! link Keyword VanillaKeyword
hi! link Exception VanillaKeyword

hi! link PreProc VanillaKeyword
hi! link Include VanillaKeyword
hi! link Define VanillaKeyword
hi! link Macro VanillaKeyword
hi! link PreCondit VanillaKeyword
hi! link StorageClass VanillaKeyword
hi! link Structure VanillaKeyword
hi! link Typedef VanillaKeyword

hi! link Type VanillaKeyColorItalic

hi! link Delimiter VanillaFg

hi! link Special VanillaKeyword
hi! link SpecialComment VanillaKeyColorItalic
hi! link Tag VanillaKeyColor
hi! link helpHyperTextJump VanillaLink
hi! link helpCommand VanillaConstants
hi! link helpExample VanillaClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
