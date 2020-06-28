" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'yuri_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:yuri_light#palette.fg

let s:bglighter = g:yuri_light#palette.bglighter
let s:bglight   = g:yuri_light#palette.bglight
let s:bg        = g:yuri_light#palette.bg
let s:bgdark    = g:yuri_light#palette.bgdark
let s:bgdarker  = g:yuri_light#palette.bgdarker

let s:comment   = g:yuri_light#palette.comment
let s:selection = g:yuri_light#palette.selection
let s:subtle    = g:yuri_light#palette.subtle

let s:key_color      = g:yuri_light#palette.key_color
let s:class_name     = g:yuri_light#palette.class_name
let s:parameter_color    = g:yuri_light#palette.parameter_color
let s:keyword_color      = g:yuri_light#palette.keyword_color
let s:constants_color    = g:yuri_light#palette.constants_color
let s:red       = g:yuri_light#palette.red
let s:string_color    = g:yuri_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:yuri_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:yuri_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:yuri_light_bold')
  let g:yuri_light_bold = 1
endif

if !exists('g:yuri_light_italic')
  let g:yuri_light_italic = 1
endif

if !exists('g:yuri_light_underline')
  let g:yuri_light_underline = 1
endif

if !exists('g:yuri_light_undercurl') && g:yuri_light_underline != 0
  let g:yuri_light_undercurl = 1
endif

if !exists('g:yuri_light_inverse')
  let g:yuri_light_inverse = 1
endif

if !exists('g:yuri_light_colorterm')
  let g:yuri_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:yuri_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:yuri_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:yuri_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:yuri_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:yuri_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('YuriLightBgLight', s:none, s:bglight)
call s:h('YuriLightBgLighter', s:none, s:bglighter)
call s:h('YuriLightBgDark', s:none, s:bgdark)
call s:h('YuriLightBgDarker', s:none, s:bgdarker)

call s:h('YuriLightFg', s:fg)
call s:h('YuriLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('YuriLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('YuriLightComment', s:comment)
call s:h('YuriLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('YuriLightSelection', s:none, s:selection)

call s:h('YuriLightSubtle', s:subtle)

call s:h('YuriLightKeyColor', s:key_color)
call s:h('YuriLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('YuriLightClassName', s:class_name)
call s:h('YuriLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('YuriLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('YuriLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('YuriLightParameter', s:parameter_color)
call s:h('YuriLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('YuriLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('YuriLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('YuriLightParameterInverse', s:bg, s:parameter_color)

call s:h('YuriLightKeyword', s:keyword_color)
call s:h('YuriLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('YuriLightConstants', s:constants_color)
call s:h('YuriLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('YuriLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('YuriLightRed', s:red)
call s:h('YuriLightRedInverse', s:fg, s:red)

call s:h('YuriLightStringColor', s:string_color)
call s:h('YuriLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('YuriLightError', s:red, s:none, [], s:red)

call s:h('YuriLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('YuriLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('YuriLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('YuriLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('YuriLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('YuriLightBoundary', s:comment, s:bgdark)
call s:h('YuriLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('YuriLightDiffChange', s:parameter_color, s:none)
call s:h('YuriLightDiffText', s:bg, s:parameter_color)
call s:h('YuriLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:yuri_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  YuriLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr YuriLightStringColor
hi! link DiffAdd      YuriLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   YuriLightDiffChange
hi! link DiffDelete   YuriLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     YuriLightDiffText
hi! link Directory    YuriLightConstantsBold
hi! link ErrorMsg     YuriLightRedInverse
hi! link FoldColumn   YuriLightSubtle
hi! link Folded       YuriLightBoundary
hi! link IncSearch    YuriLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      YuriLightFgBold
hi! link NonText      YuriLightSubtle
" hi! link Pmenu        YuriLightBgDark
" hi! link PmenuSbar    YuriLightBgDark
hi! link PmenuSel     YuriLightSelection
hi! link PmenuThumb   YuriLightSelection
hi! link Question     YuriLightFgBold
hi! link Search       YuriLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      YuriLightBoundary
" hi! link TabLineFill  YuriLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        YuriLightClassNameBold
hi! link VertSplit    YuriLightBoundary
hi! link Visual       YuriLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   YuriLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey YuriLightRed
  hi! link LspDiagnosticsUnderline YuriLightFgUnderline
  hi! link LspDiagnosticsInformation YuriLightKeyColor
  hi! link LspDiagnosticsHint YuriLightKeyColor
  hi! link LspDiagnosticsError YuriLightError
  hi! link LspDiagnosticsWarning YuriLightParameter
  hi! link LspDiagnosticsUnderlineError YuriLightErrorLine
  hi! link LspDiagnosticsUnderlineHint YuriLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation YuriLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning YuriLightWarnLine
else
  hi! link SpecialKey YuriLightSubtle
endif

hi! link Comment YuriLightComment
hi! link Underlined YuriLightFgUnderline
hi! link Todo YuriLightTodo

hi! link Error YuriLightError
hi! link SpellBad YuriLightErrorLine
hi! link SpellLocal YuriLightWarnLine
hi! link SpellCap YuriLightInfoLine
hi! link SpellRare YuriLightInfoLine

hi! link Constant YuriLightConstants
hi! link String YuriLightStringColor
hi! link Character YuriLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier YuriLightFg
hi! link Function YuriLightClassName

hi! link Statement YuriLightKeyword
hi! link Conditional YuriLightKeyword
hi! link Repeat YuriLightKeyword
hi! link Label YuriLightKeyword
hi! link Operator YuriLightKeyword
hi! link Keyword YuriLightKeyword
hi! link Exception YuriLightKeyword

hi! link PreProc YuriLightKeyword
hi! link Include YuriLightKeyword
hi! link Define YuriLightKeyword
hi! link Macro YuriLightKeyword
hi! link PreCondit YuriLightKeyword
hi! link StorageClass YuriLightKeyword
hi! link Structure YuriLightKeyword
hi! link Typedef YuriLightKeyword

hi! link Type YuriLightKeyColorItalic

hi! link Delimiter YuriLightFg

hi! link Special YuriLightKeyword
hi! link SpecialComment YuriLightKeyColorItalic
hi! link Tag YuriLightKeyColor
hi! link helpHyperTextJump YuriLightLink
hi! link helpCommand YuriLightConstants
hi! link helpExample YuriLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
