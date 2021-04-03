" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'rias_onyx'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:rias_onyx#palette.fg

let s:bglighter = g:rias_onyx#palette.bglighter
let s:bglight   = g:rias_onyx#palette.bglight
let s:bg        = g:rias_onyx#palette.bg
let s:bgdark    = g:rias_onyx#palette.bgdark
let s:bgdarker  = g:rias_onyx#palette.bgdarker

let s:comment   = g:rias_onyx#palette.comment
let s:selection = g:rias_onyx#palette.selection
let s:subtle    = g:rias_onyx#palette.subtle

let s:key_color      = g:rias_onyx#palette.key_color
let s:class_name     = g:rias_onyx#palette.class_name
let s:parameter_color    = g:rias_onyx#palette.parameter_color
let s:keyword_color      = g:rias_onyx#palette.keyword_color
let s:constants_color    = g:rias_onyx#palette.constants_color
let s:red       = g:rias_onyx#palette.red
let s:string_color    = g:rias_onyx#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:rias_onyx#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:rias_onyx#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:rias_onyx_bold')
  let g:rias_onyx_bold = 1
endif

if !exists('g:rias_onyx_italic')
  let g:rias_onyx_italic = 1
endif

if !exists('g:rias_onyx_underline')
  let g:rias_onyx_underline = 1
endif

if !exists('g:rias_onyx_undercurl') && g:rias_onyx_underline != 0
  let g:rias_onyx_undercurl = 1
endif

if !exists('g:rias_onyx_inverse')
  let g:rias_onyx_inverse = 1
endif

if !exists('g:rias_onyx_colorterm')
  let g:rias_onyx_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:rias_onyx_bold == 1 ? 'bold' : 0,
      \ 'italic': g:rias_onyx_italic == 1 ? 'italic' : 0,
      \ 'underline': g:rias_onyx_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:rias_onyx_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:rias_onyx_inverse == 1 ? 'inverse' : 0,
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

call s:h('RiasOnyxBgLight', s:none, s:bglight)
call s:h('RiasOnyxBgLighter', s:none, s:bglighter)
call s:h('RiasOnyxBgDark', s:none, s:bgdark)
call s:h('RiasOnyxBgDarker', s:none, s:bgdarker)

call s:h('RiasOnyxFg', s:fg)
call s:h('RiasOnyxFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('RiasOnyxFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('RiasOnyxComment', s:comment)
call s:h('RiasOnyxCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('RiasOnyxSelection', s:none, s:selection)

call s:h('RiasOnyxSubtle', s:subtle)

call s:h('RiasOnyxKeyColor', s:key_color)
call s:h('RiasOnyxKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('RiasOnyxClassName', s:class_name)
call s:h('RiasOnyxClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('RiasOnyxClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('RiasOnyxClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('RiasOnyxParameter', s:parameter_color)
call s:h('RiasOnyxParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('RiasOnyxParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('RiasOnyxParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('RiasOnyxParameterInverse', s:bg, s:parameter_color)

call s:h('RiasOnyxKeyword', s:keyword_color)
call s:h('RiasOnyxKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('RiasOnyxConstants', s:constants_color)
call s:h('RiasOnyxConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('RiasOnyxConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('RiasOnyxRed', s:red)
call s:h('RiasOnyxRedInverse', s:fg, s:red)

call s:h('RiasOnyxStringColor', s:string_color)
call s:h('RiasOnyxStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('RiasOnyxError', s:red, s:none, [], s:red)

call s:h('RiasOnyxErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('RiasOnyxWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('RiasOnyxInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('RiasOnyxTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('RiasOnyxSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('RiasOnyxBoundary', s:comment, s:bgdark)
call s:h('RiasOnyxLink', s:key_color, s:none, [s:attrs.underline])

call s:h('RiasOnyxDiffChange', s:parameter_color, s:none)
call s:h('RiasOnyxDiffText', s:bg, s:parameter_color)
call s:h('RiasOnyxDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:rias_onyx_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  RiasOnyxBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr RiasOnyxStringColor
hi! link DiffAdd      RiasOnyxClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   RiasOnyxDiffChange
hi! link DiffDelete   RiasOnyxDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     RiasOnyxDiffText
hi! link Directory    RiasOnyxConstantsBold
hi! link ErrorMsg     RiasOnyxRedInverse
hi! link FoldColumn   RiasOnyxSubtle
hi! link Folded       RiasOnyxBoundary
hi! link IncSearch    RiasOnyxParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      RiasOnyxFgBold
hi! link NonText      RiasOnyxSubtle
" hi! link Pmenu        RiasOnyxBgDark
" hi! link PmenuSbar    RiasOnyxBgDark
hi! link PmenuSel     RiasOnyxSelection
hi! link PmenuThumb   RiasOnyxSelection
hi! link Question     RiasOnyxFgBold
hi! link Search       RiasOnyxSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      RiasOnyxBoundary
" hi! link TabLineFill  RiasOnyxBgDarker
hi! link TabLineSel   Normal
hi! link Title        RiasOnyxClassNameBold
hi! link VertSplit    RiasOnyxBoundary
hi! link Visual       RiasOnyxSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   RiasOnyxParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey RiasOnyxRed
  hi! link LspDiagnosticsUnderline RiasOnyxFgUnderline
  hi! link LspDiagnosticsInformation RiasOnyxKeyColor
  hi! link LspDiagnosticsHint RiasOnyxKeyColor
  hi! link LspDiagnosticsError RiasOnyxError
  hi! link LspDiagnosticsWarning RiasOnyxParameter
  hi! link LspDiagnosticsUnderlineError RiasOnyxErrorLine
  hi! link LspDiagnosticsUnderlineHint RiasOnyxInfoLine
  hi! link LspDiagnosticsUnderlineInformation RiasOnyxInfoLine
  hi! link LspDiagnosticsUnderlineWarning RiasOnyxWarnLine
else
  hi! link SpecialKey RiasOnyxSubtle
endif

hi! link Comment RiasOnyxComment
hi! link Underlined RiasOnyxFgUnderline
hi! link Todo RiasOnyxTodo

hi! link Error RiasOnyxError
hi! link SpellBad RiasOnyxErrorLine
hi! link SpellLocal RiasOnyxWarnLine
hi! link SpellCap RiasOnyxInfoLine
hi! link SpellRare RiasOnyxInfoLine

hi! link Constant RiasOnyxConstants
hi! link String RiasOnyxStringColor
hi! link Character RiasOnyxKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier RiasOnyxFg
hi! link Function RiasOnyxClassName

hi! link Statement RiasOnyxKeyword
hi! link Conditional RiasOnyxKeyword
hi! link Repeat RiasOnyxKeyword
hi! link Label RiasOnyxKeyword
hi! link Operator RiasOnyxKeyword
hi! link Keyword RiasOnyxKeyword
hi! link Exception RiasOnyxKeyword

hi! link PreProc RiasOnyxKeyword
hi! link Include RiasOnyxKeyword
hi! link Define RiasOnyxKeyword
hi! link Macro RiasOnyxKeyword
hi! link PreCondit RiasOnyxKeyword
hi! link StorageClass RiasOnyxKeyword
hi! link Structure RiasOnyxKeyword
hi! link Typedef RiasOnyxKeyword

hi! link Type RiasOnyxKeyColorItalic

hi! link Delimiter RiasOnyxFg

hi! link Special RiasOnyxKeyword
hi! link SpecialComment RiasOnyxKeyColorItalic
hi! link Tag RiasOnyxKeyColor
hi! link helpHyperTextJump RiasOnyxLink
hi! link helpCommand RiasOnyxConstants
hi! link helpExample RiasOnyxClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
