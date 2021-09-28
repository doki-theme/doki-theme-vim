" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ryuko_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ryuko_dark#palette.fg

let s:bglighter = g:ryuko_dark#palette.bglighter
let s:bglight   = g:ryuko_dark#palette.bglight
let s:bg        = g:ryuko_dark#palette.bg
let s:bgdark    = g:ryuko_dark#palette.bgdark
let s:bgdarker  = g:ryuko_dark#palette.bgdarker

let s:comment   = g:ryuko_dark#palette.comment
let s:selection = g:ryuko_dark#palette.selection
let s:subtle    = g:ryuko_dark#palette.subtle

let s:key_color      = g:ryuko_dark#palette.key_color
let s:class_name     = g:ryuko_dark#palette.class_name
let s:parameter_color    = g:ryuko_dark#palette.parameter_color
let s:keyword_color      = g:ryuko_dark#palette.keyword_color
let s:constants_color    = g:ryuko_dark#palette.constants_color
let s:red       = g:ryuko_dark#palette.red
let s:string_color    = g:ryuko_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ryuko_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ryuko_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ryuko_dark_bold')
  let g:ryuko_dark_bold = 1
endif

if !exists('g:ryuko_dark_italic')
  let g:ryuko_dark_italic = 1
endif

if !exists('g:ryuko_dark_underline')
  let g:ryuko_dark_underline = 1
endif

if !exists('g:ryuko_dark_undercurl') && g:ryuko_dark_underline != 0
  let g:ryuko_dark_undercurl = 1
endif

if !exists('g:ryuko_dark_inverse')
  let g:ryuko_dark_inverse = 1
endif

if !exists('g:ryuko_dark_colorterm')
  let g:ryuko_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ryuko_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ryuko_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ryuko_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ryuko_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ryuko_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('RyukoDarkBgLight', s:none, s:bglight)
call s:h('RyukoDarkBgLighter', s:none, s:bglighter)
call s:h('RyukoDarkBgDark', s:none, s:bgdark)
call s:h('RyukoDarkBgDarker', s:none, s:bgdarker)

call s:h('RyukoDarkFg', s:fg)
call s:h('RyukoDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RyukoDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RyukoDarkComment', s:comment)
call s:h('RyukoDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RyukoDarkSelection', s:none, s:selection)

call s:h('RyukoDarkSubtle', s:subtle)

call s:h('RyukoDarkKeyColor', s:key_color)
call s:h('RyukoDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RyukoDarkClassName', s:class_name)
call s:h('RyukoDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RyukoDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RyukoDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RyukoDarkParameter', s:parameter_color)
call s:h('RyukoDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RyukoDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RyukoDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RyukoDarkParameterInverse', s:bg, s:parameter_color)

call s:h('RyukoDarkKeyword', s:keyword_color)
call s:h('RyukoDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RyukoDarkConstants', s:constants_color)
call s:h('RyukoDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RyukoDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RyukoDarkRed', s:red)
call s:h('RyukoDarkRedInverse', s:fg, s:red)

call s:h('RyukoDarkStringColor', s:string_color)
call s:h('RyukoDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RyukoDarkError', s:red, s:none, [], s:red)

call s:h('RyukoDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RyukoDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RyukoDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RyukoDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RyukoDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RyukoDarkBoundary', s:comment, s:bgdark)
call s:h('RyukoDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RyukoDarkDiffChange', s:parameter_color, s:none)
call s:h('RyukoDarkDiffText', s:bg, s:parameter_color)
call s:h('RyukoDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ryuko_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RyukoDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RyukoDarkStringColor
hi! link DiffAdd      RyukoDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RyukoDarkDiffChange
hi! link DiffDelete   RyukoDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RyukoDarkDiffText
hi! link Directory    RyukoDarkConstantsBold
hi! link ErrorMsg     RyukoDarkRedInverse
hi! link FoldColumn   RyukoDarkSubtle
hi! link Folded       RyukoDarkBoundary
hi! link IncSearch    RyukoDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RyukoDarkFgBold
hi! link NonText      RyukoDarkSubtle
" hi! link Pmenu        RyukoDarkBgDark
" hi! link PmenuSbar    RyukoDarkBgDark
hi! link PmenuSel     RyukoDarkSelection
hi! link PmenuThumb   RyukoDarkSelection
hi! link Question     RyukoDarkFgBold
hi! link Search       RyukoDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RyukoDarkBoundary
" hi! link TabLineFill  RyukoDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        RyukoDarkClassNameBold
hi! link VertSplit    RyukoDarkBoundary
hi! link Visual       RyukoDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RyukoDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RyukoDarkRed
  hi! link LspDiagnosticsUnderline RyukoDarkFgUnderline
  hi! link LspDiagnosticsInformation RyukoDarkKeyColor
  hi! link LspDiagnosticsHint RyukoDarkKeyColor
  hi! link LspDiagnosticsError RyukoDarkError
  hi! link LspDiagnosticsWarning RyukoDarkParameter
  hi! link LspDiagnosticsUnderlineError RyukoDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint RyukoDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation RyukoDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning RyukoDarkWarnLine
else
  hi! link SpecialKey RyukoDarkSubtle
endif

hi! link Comment RyukoDarkComment
hi! link Underlined RyukoDarkFgUnderline
hi! link Todo RyukoDarkTodo

hi! link Error RyukoDarkError
hi! link SpellBad RyukoDarkErrorLine
hi! link SpellLocal RyukoDarkWarnLine
hi! link SpellCap RyukoDarkInfoLine
hi! link SpellRare RyukoDarkInfoLine

hi! link Constant RyukoDarkConstants
hi! link String RyukoDarkStringColor
hi! link Character RyukoDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RyukoDarkFg
hi! link Function RyukoDarkClassName

hi! link Statement RyukoDarkKeyword
hi! link Conditional RyukoDarkKeyword
hi! link Repeat RyukoDarkKeyword
hi! link Label RyukoDarkKeyword
hi! link Operator RyukoDarkKeyword
hi! link Keyword RyukoDarkKeyword
hi! link Exception RyukoDarkKeyword

hi! link PreProc RyukoDarkKeyword
hi! link Include RyukoDarkKeyword
hi! link Define RyukoDarkKeyword
hi! link Macro RyukoDarkKeyword
hi! link PreCondit RyukoDarkKeyword
hi! link StorageClass RyukoDarkKeyword
hi! link Structure RyukoDarkKeyword
hi! link Typedef RyukoDarkKeyword

hi! link Type RyukoDarkKeyColorItalic

hi! link Delimiter RyukoDarkFg

hi! link Special RyukoDarkKeyword
hi! link SpecialComment RyukoDarkKeyColorItalic
hi! link Tag RyukoDarkKeyColor
hi! link helpHyperTextJump RyukoDarkLink
hi! link helpCommand RyukoDarkConstants
hi! link helpExample RyukoDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
