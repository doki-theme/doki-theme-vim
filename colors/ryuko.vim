" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ryuko'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ryuko#palette.fg

let s:bglighter = g:ryuko#palette.bglighter
let s:bglight   = g:ryuko#palette.bglight
let s:bg        = g:ryuko#palette.bg
let s:bgdark    = g:ryuko#palette.bgdark
let s:bgdarker  = g:ryuko#palette.bgdarker

let s:comment   = g:ryuko#palette.comment
let s:selection = g:ryuko#palette.selection
let s:subtle    = g:ryuko#palette.subtle

let s:key_color      = g:ryuko#palette.key_color
let s:class_name     = g:ryuko#palette.class_name
let s:parameter_color    = g:ryuko#palette.parameter_color
let s:keyword_color      = g:ryuko#palette.keyword_color
let s:constants_color    = g:ryuko#palette.constants_color
let s:red       = g:ryuko#palette.red
let s:string_color    = g:ryuko#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ryuko#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ryuko#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ryuko_bold')
  let g:ryuko_bold = 1
endif

if !exists('g:ryuko_italic')
  let g:ryuko_italic = 1
endif

if !exists('g:ryuko_underline')
  let g:ryuko_underline = 1
endif

if !exists('g:ryuko_undercurl') && g:ryuko_underline != 0
  let g:ryuko_undercurl = 1
endif

if !exists('g:ryuko_inverse')
  let g:ryuko_inverse = 1
endif

if !exists('g:ryuko_colorterm')
  let g:ryuko_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ryuko_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ryuko_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ryuko_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ryuko_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ryuko_inverse == 1 ? 'inverse' : 0,
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

call s:h('RyukoBgLight', s:none, s:bglight)
call s:h('RyukoBgLighter', s:none, s:bglighter)
call s:h('RyukoBgDark', s:none, s:bgdark)
call s:h('RyukoBgDarker', s:none, s:bgdarker)

call s:h('RyukoFg', s:fg)
call s:h('RyukoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RyukoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RyukoComment', s:comment)
call s:h('RyukoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RyukoSelection', s:none, s:selection)

call s:h('RyukoSubtle', s:subtle)

call s:h('RyukoKeyColor', s:key_color)
call s:h('RyukoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RyukoClassName', s:class_name)
call s:h('RyukoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RyukoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RyukoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RyukoParameter', s:parameter_color)
call s:h('RyukoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RyukoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RyukoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RyukoParameterInverse', s:bg, s:parameter_color)

call s:h('RyukoKeyword', s:keyword_color)
call s:h('RyukoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RyukoConstants', s:constants_color)
call s:h('RyukoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RyukoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RyukoRed', s:red)
call s:h('RyukoRedInverse', s:fg, s:red)

call s:h('RyukoStringColor', s:string_color)
call s:h('RyukoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RyukoError', s:red, s:none, [], s:red)

call s:h('RyukoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RyukoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RyukoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RyukoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RyukoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RyukoBoundary', s:comment, s:bgdark)
call s:h('RyukoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RyukoDiffChange', s:parameter_color, s:none)
call s:h('RyukoDiffText', s:bg, s:parameter_color)
call s:h('RyukoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ryuko_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RyukoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RyukoStringColor
hi! link DiffAdd      RyukoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RyukoDiffChange
hi! link DiffDelete   RyukoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RyukoDiffText
hi! link Directory    RyukoConstantsBold
hi! link ErrorMsg     RyukoRedInverse
hi! link FoldColumn   RyukoSubtle
hi! link Folded       RyukoBoundary
hi! link IncSearch    RyukoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RyukoFgBold
hi! link NonText      RyukoSubtle
" hi! link Pmenu        RyukoBgDark
" hi! link PmenuSbar    RyukoBgDark
hi! link PmenuSel     RyukoSelection
hi! link PmenuThumb   RyukoSelection
hi! link Question     RyukoFgBold
hi! link Search       RyukoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RyukoBoundary
" hi! link TabLineFill  RyukoBgDarker
hi! link TabLineSel   Normal
hi! link Title        RyukoClassNameBold
hi! link VertSplit    RyukoBoundary
hi! link Visual       RyukoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RyukoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RyukoRed
  hi! link LspDiagnosticsUnderline RyukoFgUnderline
  hi! link LspDiagnosticsInformation RyukoKeyColor
  hi! link LspDiagnosticsHint RyukoKeyColor
  hi! link LspDiagnosticsError RyukoError
  hi! link LspDiagnosticsWarning RyukoParameter
  hi! link LspDiagnosticsUnderlineError RyukoErrorLine
  hi! link LspDiagnosticsUnderlineHint RyukoInfoLine
  hi! link LspDiagnosticsUnderlineInformation RyukoInfoLine
  hi! link LspDiagnosticsUnderlineWarning RyukoWarnLine
else
  hi! link SpecialKey RyukoSubtle
endif

hi! link Comment RyukoComment
hi! link Underlined RyukoFgUnderline
hi! link Todo RyukoTodo

hi! link Error RyukoError
hi! link SpellBad RyukoErrorLine
hi! link SpellLocal RyukoWarnLine
hi! link SpellCap RyukoInfoLine
hi! link SpellRare RyukoInfoLine

hi! link Constant RyukoConstants
hi! link String RyukoStringColor
hi! link Character RyukoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RyukoFg
hi! link Function RyukoClassName

hi! link Statement RyukoKeyword
hi! link Conditional RyukoKeyword
hi! link Repeat RyukoKeyword
hi! link Label RyukoKeyword
hi! link Operator RyukoKeyword
hi! link Keyword RyukoKeyword
hi! link Exception RyukoKeyword

hi! link PreProc RyukoKeyword
hi! link Include RyukoKeyword
hi! link Define RyukoKeyword
hi! link Macro RyukoKeyword
hi! link PreCondit RyukoKeyword
hi! link StorageClass RyukoKeyword
hi! link Structure RyukoKeyword
hi! link Typedef RyukoKeyword

hi! link Type RyukoKeyColorItalic

hi! link Delimiter RyukoFg

hi! link Special RyukoKeyword
hi! link SpecialComment RyukoKeyColorItalic
hi! link Tag RyukoKeyColor
hi! link helpHyperTextJump RyukoLink
hi! link helpCommand RyukoConstants
hi! link helpExample RyukoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
