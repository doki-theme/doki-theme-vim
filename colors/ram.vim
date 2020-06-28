" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ram'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ram#palette.fg

let s:bglighter = g:ram#palette.bglighter
let s:bglight   = g:ram#palette.bglight
let s:bg        = g:ram#palette.bg
let s:bgdark    = g:ram#palette.bgdark
let s:bgdarker  = g:ram#palette.bgdarker

let s:comment   = g:ram#palette.comment
let s:selection = g:ram#palette.selection
let s:subtle    = g:ram#palette.subtle

let s:key_color      = g:ram#palette.key_color
let s:class_name     = g:ram#palette.class_name
let s:parameter_color    = g:ram#palette.parameter_color
let s:keyword_color      = g:ram#palette.keyword_color
let s:constants_color    = g:ram#palette.constants_color
let s:red       = g:ram#palette.red
let s:string_color    = g:ram#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ram#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ram#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ram_bold')
  let g:ram_bold = 1
endif

if !exists('g:ram_italic')
  let g:ram_italic = 1
endif

if !exists('g:ram_underline')
  let g:ram_underline = 1
endif

if !exists('g:ram_undercurl') && g:ram_underline != 0
  let g:ram_undercurl = 1
endif

if !exists('g:ram_inverse')
  let g:ram_inverse = 1
endif

if !exists('g:ram_colorterm')
  let g:ram_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ram_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ram_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ram_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ram_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ram_inverse == 1 ? 'inverse' : 0,
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

call s:h('RamBgLight', s:none, s:bglight)
call s:h('RamBgLighter', s:none, s:bglighter)
call s:h('RamBgDark', s:none, s:bgdark)
call s:h('RamBgDarker', s:none, s:bgdarker)

call s:h('RamFg', s:fg)
call s:h('RamFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RamFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RamComment', s:comment)
call s:h('RamCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RamSelection', s:none, s:selection)

call s:h('RamSubtle', s:subtle)

call s:h('RamKeyColor', s:key_color)
call s:h('RamKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RamClassName', s:class_name)
call s:h('RamClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RamClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RamClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RamParameter', s:parameter_color)
call s:h('RamParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RamParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RamParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RamParameterInverse', s:bg, s:parameter_color)

call s:h('RamKeyword', s:keyword_color)
call s:h('RamKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RamConstants', s:constants_color)
call s:h('RamConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RamConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RamRed', s:red)
call s:h('RamRedInverse', s:fg, s:red)

call s:h('RamStringColor', s:string_color)
call s:h('RamStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RamError', s:red, s:none, [], s:red)

call s:h('RamErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RamWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RamInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RamTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RamSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RamBoundary', s:comment, s:bgdark)
call s:h('RamLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RamDiffChange', s:parameter_color, s:none)
call s:h('RamDiffText', s:bg, s:parameter_color)
call s:h('RamDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ram_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RamBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RamStringColor
hi! link DiffAdd      RamClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RamDiffChange
hi! link DiffDelete   RamDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RamDiffText
hi! link Directory    RamConstantsBold
hi! link ErrorMsg     RamRedInverse
hi! link FoldColumn   RamSubtle
hi! link Folded       RamBoundary
hi! link IncSearch    RamParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RamFgBold
hi! link NonText      RamSubtle
" hi! link Pmenu        RamBgDark
" hi! link PmenuSbar    RamBgDark
hi! link PmenuSel     RamSelection
hi! link PmenuThumb   RamSelection
hi! link Question     RamFgBold
hi! link Search       RamSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RamBoundary
" hi! link TabLineFill  RamBgDarker
hi! link TabLineSel   Normal
hi! link Title        RamClassNameBold
hi! link VertSplit    RamBoundary
hi! link Visual       RamSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RamParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RamRed
  hi! link LspDiagnosticsUnderline RamFgUnderline
  hi! link LspDiagnosticsInformation RamKeyColor
  hi! link LspDiagnosticsHint RamKeyColor
  hi! link LspDiagnosticsError RamError
  hi! link LspDiagnosticsWarning RamParameter
  hi! link LspDiagnosticsUnderlineError RamErrorLine
  hi! link LspDiagnosticsUnderlineHint RamInfoLine
  hi! link LspDiagnosticsUnderlineInformation RamInfoLine
  hi! link LspDiagnosticsUnderlineWarning RamWarnLine
else
  hi! link SpecialKey RamSubtle
endif

hi! link Comment RamComment
hi! link Underlined RamFgUnderline
hi! link Todo RamTodo

hi! link Error RamError
hi! link SpellBad RamErrorLine
hi! link SpellLocal RamWarnLine
hi! link SpellCap RamInfoLine
hi! link SpellRare RamInfoLine

hi! link Constant RamConstants
hi! link String RamStringColor
hi! link Character RamKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RamFg
hi! link Function RamClassName

hi! link Statement RamKeyword
hi! link Conditional RamKeyword
hi! link Repeat RamKeyword
hi! link Label RamKeyword
hi! link Operator RamKeyword
hi! link Keyword RamKeyword
hi! link Exception RamKeyword

hi! link PreProc RamKeyword
hi! link Include RamKeyword
hi! link Define RamKeyword
hi! link Macro RamKeyword
hi! link PreCondit RamKeyword
hi! link StorageClass RamKeyword
hi! link Structure RamKeyword
hi! link Typedef RamKeyword

hi! link Type RamKeyColorItalic

hi! link Delimiter RamFg

hi! link Special RamKeyword
hi! link SpecialComment RamKeyColorItalic
hi! link Tag RamKeyColor
hi! link helpHyperTextJump RamLink
hi! link helpCommand RamConstants
hi! link helpExample RamClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
