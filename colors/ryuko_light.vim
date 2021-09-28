" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ryuko_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ryuko_light#palette.fg

let s:bglighter = g:ryuko_light#palette.bglighter
let s:bglight   = g:ryuko_light#palette.bglight
let s:bg        = g:ryuko_light#palette.bg
let s:bgdark    = g:ryuko_light#palette.bgdark
let s:bgdarker  = g:ryuko_light#palette.bgdarker

let s:comment   = g:ryuko_light#palette.comment
let s:selection = g:ryuko_light#palette.selection
let s:subtle    = g:ryuko_light#palette.subtle

let s:key_color      = g:ryuko_light#palette.key_color
let s:class_name     = g:ryuko_light#palette.class_name
let s:parameter_color    = g:ryuko_light#palette.parameter_color
let s:keyword_color      = g:ryuko_light#palette.keyword_color
let s:constants_color    = g:ryuko_light#palette.constants_color
let s:red       = g:ryuko_light#palette.red
let s:string_color    = g:ryuko_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ryuko_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ryuko_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ryuko_light_bold')
  let g:ryuko_light_bold = 1
endif

if !exists('g:ryuko_light_italic')
  let g:ryuko_light_italic = 1
endif

if !exists('g:ryuko_light_underline')
  let g:ryuko_light_underline = 1
endif

if !exists('g:ryuko_light_undercurl') && g:ryuko_light_underline != 0
  let g:ryuko_light_undercurl = 1
endif

if !exists('g:ryuko_light_inverse')
  let g:ryuko_light_inverse = 1
endif

if !exists('g:ryuko_light_colorterm')
  let g:ryuko_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ryuko_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ryuko_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ryuko_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ryuko_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ryuko_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('RyukoLightBgLight', s:none, s:bglight)
call s:h('RyukoLightBgLighter', s:none, s:bglighter)
call s:h('RyukoLightBgDark', s:none, s:bgdark)
call s:h('RyukoLightBgDarker', s:none, s:bgdarker)

call s:h('RyukoLightFg', s:fg)
call s:h('RyukoLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RyukoLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RyukoLightComment', s:comment)
call s:h('RyukoLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RyukoLightSelection', s:none, s:selection)

call s:h('RyukoLightSubtle', s:subtle)

call s:h('RyukoLightKeyColor', s:key_color)
call s:h('RyukoLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RyukoLightClassName', s:class_name)
call s:h('RyukoLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RyukoLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RyukoLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RyukoLightParameter', s:parameter_color)
call s:h('RyukoLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RyukoLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RyukoLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RyukoLightParameterInverse', s:bg, s:parameter_color)

call s:h('RyukoLightKeyword', s:keyword_color)
call s:h('RyukoLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RyukoLightConstants', s:constants_color)
call s:h('RyukoLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RyukoLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RyukoLightRed', s:red)
call s:h('RyukoLightRedInverse', s:fg, s:red)

call s:h('RyukoLightStringColor', s:string_color)
call s:h('RyukoLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RyukoLightError', s:red, s:none, [], s:red)

call s:h('RyukoLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RyukoLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RyukoLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RyukoLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RyukoLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RyukoLightBoundary', s:comment, s:bgdark)
call s:h('RyukoLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RyukoLightDiffChange', s:parameter_color, s:none)
call s:h('RyukoLightDiffText', s:bg, s:parameter_color)
call s:h('RyukoLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ryuko_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RyukoLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RyukoLightStringColor
hi! link DiffAdd      RyukoLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RyukoLightDiffChange
hi! link DiffDelete   RyukoLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RyukoLightDiffText
hi! link Directory    RyukoLightConstantsBold
hi! link ErrorMsg     RyukoLightRedInverse
hi! link FoldColumn   RyukoLightSubtle
hi! link Folded       RyukoLightBoundary
hi! link IncSearch    RyukoLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RyukoLightFgBold
hi! link NonText      RyukoLightSubtle
" hi! link Pmenu        RyukoLightBgDark
" hi! link PmenuSbar    RyukoLightBgDark
hi! link PmenuSel     RyukoLightSelection
hi! link PmenuThumb   RyukoLightSelection
hi! link Question     RyukoLightFgBold
hi! link Search       RyukoLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RyukoLightBoundary
" hi! link TabLineFill  RyukoLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        RyukoLightClassNameBold
hi! link VertSplit    RyukoLightBoundary
hi! link Visual       RyukoLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RyukoLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RyukoLightRed
  hi! link LspDiagnosticsUnderline RyukoLightFgUnderline
  hi! link LspDiagnosticsInformation RyukoLightKeyColor
  hi! link LspDiagnosticsHint RyukoLightKeyColor
  hi! link LspDiagnosticsError RyukoLightError
  hi! link LspDiagnosticsWarning RyukoLightParameter
  hi! link LspDiagnosticsUnderlineError RyukoLightErrorLine
  hi! link LspDiagnosticsUnderlineHint RyukoLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation RyukoLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning RyukoLightWarnLine
else
  hi! link SpecialKey RyukoLightSubtle
endif

hi! link Comment RyukoLightComment
hi! link Underlined RyukoLightFgUnderline
hi! link Todo RyukoLightTodo

hi! link Error RyukoLightError
hi! link SpellBad RyukoLightErrorLine
hi! link SpellLocal RyukoLightWarnLine
hi! link SpellCap RyukoLightInfoLine
hi! link SpellRare RyukoLightInfoLine

hi! link Constant RyukoLightConstants
hi! link String RyukoLightStringColor
hi! link Character RyukoLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RyukoLightFg
hi! link Function RyukoLightClassName

hi! link Statement RyukoLightKeyword
hi! link Conditional RyukoLightKeyword
hi! link Repeat RyukoLightKeyword
hi! link Label RyukoLightKeyword
hi! link Operator RyukoLightKeyword
hi! link Keyword RyukoLightKeyword
hi! link Exception RyukoLightKeyword

hi! link PreProc RyukoLightKeyword
hi! link Include RyukoLightKeyword
hi! link Define RyukoLightKeyword
hi! link Macro RyukoLightKeyword
hi! link PreCondit RyukoLightKeyword
hi! link StorageClass RyukoLightKeyword
hi! link Structure RyukoLightKeyword
hi! link Typedef RyukoLightKeyword

hi! link Type RyukoLightKeyColorItalic

hi! link Delimiter RyukoLightFg

hi! link Special RyukoLightKeyword
hi! link SpecialComment RyukoLightKeyColorItalic
hi! link Tag RyukoLightKeyColor
hi! link helpHyperTextJump RyukoLightLink
hi! link helpCommand RyukoLightConstants
hi! link helpExample RyukoLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
