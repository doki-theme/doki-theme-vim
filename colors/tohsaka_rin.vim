" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'tohsaka_rin'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:tohsaka_rin#palette.fg

let s:bglighter = g:tohsaka_rin#palette.bglighter
let s:bglight   = g:tohsaka_rin#palette.bglight
let s:bg        = g:tohsaka_rin#palette.bg
let s:bgdark    = g:tohsaka_rin#palette.bgdark
let s:bgdarker  = g:tohsaka_rin#palette.bgdarker

let s:comment   = g:tohsaka_rin#palette.comment
let s:selection = g:tohsaka_rin#palette.selection
let s:subtle    = g:tohsaka_rin#palette.subtle

let s:key_color      = g:tohsaka_rin#palette.key_color
let s:class_name     = g:tohsaka_rin#palette.class_name
let s:parameter_color    = g:tohsaka_rin#palette.parameter_color
let s:keyword_color      = g:tohsaka_rin#palette.keyword_color
let s:constants_color    = g:tohsaka_rin#palette.constants_color
let s:red       = g:tohsaka_rin#palette.red
let s:string_color    = g:tohsaka_rin#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:tohsaka_rin#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:tohsaka_rin#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:tohsaka_rin_bold')
  let g:tohsaka_rin_bold = 1
endif

if !exists('g:tohsaka_rin_italic')
  let g:tohsaka_rin_italic = 1
endif

if !exists('g:tohsaka_rin_underline')
  let g:tohsaka_rin_underline = 1
endif

if !exists('g:tohsaka_rin_undercurl') && g:tohsaka_rin_underline != 0
  let g:tohsaka_rin_undercurl = 1
endif

if !exists('g:tohsaka_rin_inverse')
  let g:tohsaka_rin_inverse = 1
endif

if !exists('g:tohsaka_rin_colorterm')
  let g:tohsaka_rin_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:tohsaka_rin_bold == 1 ? 'bold' : 0,
      \ 'italic': g:tohsaka_rin_italic == 1 ? 'italic' : 0,
      \ 'underline': g:tohsaka_rin_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:tohsaka_rin_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:tohsaka_rin_inverse == 1 ? 'inverse' : 0,
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

call s:h('TohsakaRinBgLight', s:none, s:bglight)
call s:h('TohsakaRinBgLighter', s:none, s:bglighter)
call s:h('TohsakaRinBgDark', s:none, s:bgdark)
call s:h('TohsakaRinBgDarker', s:none, s:bgdarker)

call s:h('TohsakaRinFg', s:fg)
call s:h('TohsakaRinFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('TohsakaRinFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('TohsakaRinComment', s:comment)
call s:h('TohsakaRinCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('TohsakaRinSelection', s:none, s:selection)

call s:h('TohsakaRinSubtle', s:subtle)

call s:h('TohsakaRinKeyColor', s:key_color)
call s:h('TohsakaRinKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('TohsakaRinClassName', s:class_name)
call s:h('TohsakaRinClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('TohsakaRinClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('TohsakaRinClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('TohsakaRinParameter', s:parameter_color)
call s:h('TohsakaRinParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('TohsakaRinParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('TohsakaRinParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('TohsakaRinParameterInverse', s:bg, s:parameter_color)

call s:h('TohsakaRinKeyword', s:keyword_color)
call s:h('TohsakaRinKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('TohsakaRinConstants', s:constants_color)
call s:h('TohsakaRinConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('TohsakaRinConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('TohsakaRinRed', s:red)
call s:h('TohsakaRinRedInverse', s:fg, s:red)

call s:h('TohsakaRinStringColor', s:string_color)
call s:h('TohsakaRinStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('TohsakaRinError', s:red, s:none, [], s:red)

call s:h('TohsakaRinErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('TohsakaRinWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('TohsakaRinInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('TohsakaRinTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('TohsakaRinSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('TohsakaRinBoundary', s:comment, s:bgdark)
call s:h('TohsakaRinLink', s:key_color, s:none, [s:attrs.underline])

call s:h('TohsakaRinDiffChange', s:parameter_color, s:none)
call s:h('TohsakaRinDiffText', s:bg, s:parameter_color)
call s:h('TohsakaRinDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:tohsaka_rin_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  TohsakaRinBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr TohsakaRinStringColor
hi! link DiffAdd      TohsakaRinClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   TohsakaRinDiffChange
hi! link DiffDelete   TohsakaRinDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     TohsakaRinDiffText
hi! link Directory    TohsakaRinConstantsBold
hi! link ErrorMsg     TohsakaRinRedInverse
hi! link FoldColumn   TohsakaRinSubtle
hi! link Folded       TohsakaRinBoundary
hi! link IncSearch    TohsakaRinParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      TohsakaRinFgBold
hi! link NonText      TohsakaRinSubtle
" hi! link Pmenu        TohsakaRinBgDark
" hi! link PmenuSbar    TohsakaRinBgDark
hi! link PmenuSel     TohsakaRinSelection
hi! link PmenuThumb   TohsakaRinSelection
hi! link Question     TohsakaRinFgBold
hi! link Search       TohsakaRinSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      TohsakaRinBoundary
" hi! link TabLineFill  TohsakaRinBgDarker
hi! link TabLineSel   Normal
hi! link Title        TohsakaRinClassNameBold
hi! link VertSplit    TohsakaRinBoundary
hi! link Visual       TohsakaRinSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   TohsakaRinParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey TohsakaRinRed
  hi! link LspDiagnosticsUnderline TohsakaRinFgUnderline
  hi! link LspDiagnosticsInformation TohsakaRinKeyColor
  hi! link LspDiagnosticsHint TohsakaRinKeyColor
  hi! link LspDiagnosticsError TohsakaRinError
  hi! link LspDiagnosticsWarning TohsakaRinParameter
  hi! link LspDiagnosticsUnderlineError TohsakaRinErrorLine
  hi! link LspDiagnosticsUnderlineHint TohsakaRinInfoLine
  hi! link LspDiagnosticsUnderlineInformation TohsakaRinInfoLine
  hi! link LspDiagnosticsUnderlineWarning TohsakaRinWarnLine
else
  hi! link SpecialKey TohsakaRinSubtle
endif

hi! link Comment TohsakaRinComment
hi! link Underlined TohsakaRinFgUnderline
hi! link Todo TohsakaRinTodo

hi! link Error TohsakaRinError
hi! link SpellBad TohsakaRinErrorLine
hi! link SpellLocal TohsakaRinWarnLine
hi! link SpellCap TohsakaRinInfoLine
hi! link SpellRare TohsakaRinInfoLine

hi! link Constant TohsakaRinConstants
hi! link String TohsakaRinStringColor
hi! link Character TohsakaRinKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier TohsakaRinFg
hi! link Function TohsakaRinClassName

hi! link Statement TohsakaRinKeyword
hi! link Conditional TohsakaRinKeyword
hi! link Repeat TohsakaRinKeyword
hi! link Label TohsakaRinKeyword
hi! link Operator TohsakaRinKeyword
hi! link Keyword TohsakaRinKeyword
hi! link Exception TohsakaRinKeyword

hi! link PreProc TohsakaRinKeyword
hi! link Include TohsakaRinKeyword
hi! link Define TohsakaRinKeyword
hi! link Macro TohsakaRinKeyword
hi! link PreCondit TohsakaRinKeyword
hi! link StorageClass TohsakaRinKeyword
hi! link Structure TohsakaRinKeyword
hi! link Typedef TohsakaRinKeyword

hi! link Type TohsakaRinKeyColorItalic

hi! link Delimiter TohsakaRinFg

hi! link Special TohsakaRinKeyword
hi! link SpecialComment TohsakaRinKeyColorItalic
hi! link Tag TohsakaRinKeyColor
hi! link helpHyperTextJump TohsakaRinLink
hi! link helpCommand TohsakaRinConstants
hi! link helpExample TohsakaRinClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
