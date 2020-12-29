" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'makise_kurisu'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:makise_kurisu#palette.fg

let s:bglighter = g:makise_kurisu#palette.bglighter
let s:bglight   = g:makise_kurisu#palette.bglight
let s:bg        = g:makise_kurisu#palette.bg
let s:bgdark    = g:makise_kurisu#palette.bgdark
let s:bgdarker  = g:makise_kurisu#palette.bgdarker

let s:comment   = g:makise_kurisu#palette.comment
let s:selection = g:makise_kurisu#palette.selection
let s:subtle    = g:makise_kurisu#palette.subtle

let s:key_color      = g:makise_kurisu#palette.key_color
let s:class_name     = g:makise_kurisu#palette.class_name
let s:parameter_color    = g:makise_kurisu#palette.parameter_color
let s:keyword_color      = g:makise_kurisu#palette.keyword_color
let s:constants_color    = g:makise_kurisu#palette.constants_color
let s:red       = g:makise_kurisu#palette.red
let s:string_color    = g:makise_kurisu#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:makise_kurisu#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:makise_kurisu#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:makise_kurisu_bold')
  let g:makise_kurisu_bold = 1
endif

if !exists('g:makise_kurisu_italic')
  let g:makise_kurisu_italic = 1
endif

if !exists('g:makise_kurisu_underline')
  let g:makise_kurisu_underline = 1
endif

if !exists('g:makise_kurisu_undercurl') && g:makise_kurisu_underline != 0
  let g:makise_kurisu_undercurl = 1
endif

if !exists('g:makise_kurisu_inverse')
  let g:makise_kurisu_inverse = 1
endif

if !exists('g:makise_kurisu_colorterm')
  let g:makise_kurisu_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:makise_kurisu_bold == 1 ? 'bold' : 0,
      \ 'italic': g:makise_kurisu_italic == 1 ? 'italic' : 0,
      \ 'underline': g:makise_kurisu_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:makise_kurisu_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:makise_kurisu_inverse == 1 ? 'inverse' : 0,
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

call s:h('MakiseKurisuBgLight', s:none, s:bglight)
call s:h('MakiseKurisuBgLighter', s:none, s:bglighter)
call s:h('MakiseKurisuBgDark', s:none, s:bgdark)
call s:h('MakiseKurisuBgDarker', s:none, s:bgdarker)

call s:h('MakiseKurisuFg', s:fg)
call s:h('MakiseKurisuFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('MakiseKurisuFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('MakiseKurisuComment', s:comment)
call s:h('MakiseKurisuCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('MakiseKurisuSelection', s:none, s:selection)

call s:h('MakiseKurisuSubtle', s:subtle)

call s:h('MakiseKurisuKeyColor', s:key_color)
call s:h('MakiseKurisuKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('MakiseKurisuClassName', s:class_name)
call s:h('MakiseKurisuClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('MakiseKurisuClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('MakiseKurisuClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('MakiseKurisuParameter', s:parameter_color)
call s:h('MakiseKurisuParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('MakiseKurisuParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('MakiseKurisuParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('MakiseKurisuParameterInverse', s:bg, s:parameter_color)

call s:h('MakiseKurisuKeyword', s:keyword_color)
call s:h('MakiseKurisuKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('MakiseKurisuConstants', s:constants_color)
call s:h('MakiseKurisuConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('MakiseKurisuConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('MakiseKurisuRed', s:red)
call s:h('MakiseKurisuRedInverse', s:fg, s:red)

call s:h('MakiseKurisuStringColor', s:string_color)
call s:h('MakiseKurisuStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('MakiseKurisuError', s:red, s:none, [], s:red)

call s:h('MakiseKurisuErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('MakiseKurisuWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('MakiseKurisuInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('MakiseKurisuTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('MakiseKurisuSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('MakiseKurisuBoundary', s:comment, s:bgdark)
call s:h('MakiseKurisuLink', s:key_color, s:none, [s:attrs.underline])

call s:h('MakiseKurisuDiffChange', s:parameter_color, s:none)
call s:h('MakiseKurisuDiffText', s:bg, s:parameter_color)
call s:h('MakiseKurisuDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:makise_kurisu_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  MakiseKurisuBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr MakiseKurisuStringColor
hi! link DiffAdd      MakiseKurisuClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   MakiseKurisuDiffChange
hi! link DiffDelete   MakiseKurisuDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     MakiseKurisuDiffText
hi! link Directory    MakiseKurisuConstantsBold
hi! link ErrorMsg     MakiseKurisuRedInverse
hi! link FoldColumn   MakiseKurisuSubtle
hi! link Folded       MakiseKurisuBoundary
hi! link IncSearch    MakiseKurisuParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      MakiseKurisuFgBold
hi! link NonText      MakiseKurisuSubtle
" hi! link Pmenu        MakiseKurisuBgDark
" hi! link PmenuSbar    MakiseKurisuBgDark
hi! link PmenuSel     MakiseKurisuSelection
hi! link PmenuThumb   MakiseKurisuSelection
hi! link Question     MakiseKurisuFgBold
hi! link Search       MakiseKurisuSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      MakiseKurisuBoundary
" hi! link TabLineFill  MakiseKurisuBgDarker
hi! link TabLineSel   Normal
hi! link Title        MakiseKurisuClassNameBold
hi! link VertSplit    MakiseKurisuBoundary
hi! link Visual       MakiseKurisuSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   MakiseKurisuParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey MakiseKurisuRed
  hi! link LspDiagnosticsUnderline MakiseKurisuFgUnderline
  hi! link LspDiagnosticsInformation MakiseKurisuKeyColor
  hi! link LspDiagnosticsHint MakiseKurisuKeyColor
  hi! link LspDiagnosticsError MakiseKurisuError
  hi! link LspDiagnosticsWarning MakiseKurisuParameter
  hi! link LspDiagnosticsUnderlineError MakiseKurisuErrorLine
  hi! link LspDiagnosticsUnderlineHint MakiseKurisuInfoLine
  hi! link LspDiagnosticsUnderlineInformation MakiseKurisuInfoLine
  hi! link LspDiagnosticsUnderlineWarning MakiseKurisuWarnLine
else
  hi! link SpecialKey MakiseKurisuSubtle
endif

hi! link Comment MakiseKurisuComment
hi! link Underlined MakiseKurisuFgUnderline
hi! link Todo MakiseKurisuTodo

hi! link Error MakiseKurisuError
hi! link SpellBad MakiseKurisuErrorLine
hi! link SpellLocal MakiseKurisuWarnLine
hi! link SpellCap MakiseKurisuInfoLine
hi! link SpellRare MakiseKurisuInfoLine

hi! link Constant MakiseKurisuConstants
hi! link String MakiseKurisuStringColor
hi! link Character MakiseKurisuKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier MakiseKurisuFg
hi! link Function MakiseKurisuClassName

hi! link Statement MakiseKurisuKeyword
hi! link Conditional MakiseKurisuKeyword
hi! link Repeat MakiseKurisuKeyword
hi! link Label MakiseKurisuKeyword
hi! link Operator MakiseKurisuKeyword
hi! link Keyword MakiseKurisuKeyword
hi! link Exception MakiseKurisuKeyword

hi! link PreProc MakiseKurisuKeyword
hi! link Include MakiseKurisuKeyword
hi! link Define MakiseKurisuKeyword
hi! link Macro MakiseKurisuKeyword
hi! link PreCondit MakiseKurisuKeyword
hi! link StorageClass MakiseKurisuKeyword
hi! link Structure MakiseKurisuKeyword
hi! link Typedef MakiseKurisuKeyword

hi! link Type MakiseKurisuKeyColorItalic

hi! link Delimiter MakiseKurisuFg

hi! link Special MakiseKurisuKeyword
hi! link SpecialComment MakiseKurisuKeyColorItalic
hi! link Tag MakiseKurisuKeyColor
hi! link helpHyperTextJump MakiseKurisuLink
hi! link helpCommand MakiseKurisuConstants
hi! link helpExample MakiseKurisuClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
