" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'darkness_light'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:darkness_light#palette.fg

let s:bglighter = g:darkness_light#palette.bglighter
let s:bglight   = g:darkness_light#palette.bglight
let s:bg        = g:darkness_light#palette.bg
let s:bgdark    = g:darkness_light#palette.bgdark
let s:bgdarker  = g:darkness_light#palette.bgdarker

let s:comment   = g:darkness_light#palette.comment
let s:selection = g:darkness_light#palette.selection
let s:subtle    = g:darkness_light#palette.subtle

let s:key_color      = g:darkness_light#palette.key_color
let s:class_name     = g:darkness_light#palette.class_name
let s:parameter_color    = g:darkness_light#palette.parameter_color
let s:keyword_color      = g:darkness_light#palette.keyword_color
let s:constants_color    = g:darkness_light#palette.constants_color
let s:red       = g:darkness_light#palette.red
let s:string_color    = g:darkness_light#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:darkness_light#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:darkness_light#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:darkness_light_bold')
  let g:darkness_light_bold = 1
endif

if !exists('g:darkness_light_italic')
  let g:darkness_light_italic = 1
endif

if !exists('g:darkness_light_underline')
  let g:darkness_light_underline = 1
endif

if !exists('g:darkness_light_undercurl') && g:darkness_light_underline != 0
  let g:darkness_light_undercurl = 1
endif

if !exists('g:darkness_light_inverse')
  let g:darkness_light_inverse = 1
endif

if !exists('g:darkness_light_colorterm')
  let g:darkness_light_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:darkness_light_bold == 1 ? 'bold' : 0,
      \ 'italic': g:darkness_light_italic == 1 ? 'italic' : 0,
      \ 'underline': g:darkness_light_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:darkness_light_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:darkness_light_inverse == 1 ? 'inverse' : 0,
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

call s:h('DarknessLightBgLight', s:none, s:bglight)
call s:h('DarknessLightBgLighter', s:none, s:bglighter)
call s:h('DarknessLightBgDark', s:none, s:bgdark)
call s:h('DarknessLightBgDarker', s:none, s:bgdarker)

call s:h('DarknessLightFg', s:fg)
call s:h('DarknessLightFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('DarknessLightFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('DarknessLightComment', s:comment)
call s:h('DarknessLightCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('DarknessLightSelection', s:none, s:selection)

call s:h('DarknessLightSubtle', s:subtle)

call s:h('DarknessLightKeyColor', s:key_color)
call s:h('DarknessLightKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('DarknessLightClassName', s:class_name)
call s:h('DarknessLightClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('DarknessLightClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('DarknessLightClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('DarknessLightParameter', s:parameter_color)
call s:h('DarknessLightParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('DarknessLightParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('DarknessLightParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('DarknessLightParameterInverse', s:bg, s:parameter_color)

call s:h('DarknessLightKeyword', s:keyword_color)
call s:h('DarknessLightKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('DarknessLightConstants', s:constants_color)
call s:h('DarknessLightConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('DarknessLightConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('DarknessLightRed', s:red)
call s:h('DarknessLightRedInverse', s:fg, s:red)

call s:h('DarknessLightStringColor', s:string_color)
call s:h('DarknessLightStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('DarknessLightError', s:red, s:none, [], s:red)

call s:h('DarknessLightErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('DarknessLightWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('DarknessLightInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('DarknessLightTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('DarknessLightSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('DarknessLightBoundary', s:comment, s:bgdark)
call s:h('DarknessLightLink', s:key_color, s:none, [s:attrs.underline])

call s:h('DarknessLightDiffChange', s:parameter_color, s:none)
call s:h('DarknessLightDiffText', s:bg, s:parameter_color)
call s:h('DarknessLightDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:darkness_light_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  DarknessLightBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr DarknessLightStringColor
hi! link DiffAdd      DarknessLightClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   DarknessLightDiffChange
hi! link DiffDelete   DarknessLightDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     DarknessLightDiffText
hi! link Directory    DarknessLightConstantsBold
hi! link ErrorMsg     DarknessLightRedInverse
hi! link FoldColumn   DarknessLightSubtle
hi! link Folded       DarknessLightBoundary
hi! link IncSearch    DarknessLightParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      DarknessLightFgBold
hi! link NonText      DarknessLightSubtle
" hi! link Pmenu        DarknessLightBgDark
" hi! link PmenuSbar    DarknessLightBgDark
hi! link PmenuSel     DarknessLightSelection
hi! link PmenuThumb   DarknessLightSelection
hi! link Question     DarknessLightFgBold
hi! link Search       DarknessLightSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      DarknessLightBoundary
" hi! link TabLineFill  DarknessLightBgDarker
hi! link TabLineSel   Normal
hi! link Title        DarknessLightClassNameBold
hi! link VertSplit    DarknessLightBoundary
hi! link Visual       DarknessLightSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   DarknessLightParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey DarknessLightRed
  hi! link LspDiagnosticsUnderline DarknessLightFgUnderline
  hi! link LspDiagnosticsInformation DarknessLightKeyColor
  hi! link LspDiagnosticsHint DarknessLightKeyColor
  hi! link LspDiagnosticsError DarknessLightError
  hi! link LspDiagnosticsWarning DarknessLightParameter
  hi! link LspDiagnosticsUnderlineError DarknessLightErrorLine
  hi! link LspDiagnosticsUnderlineHint DarknessLightInfoLine
  hi! link LspDiagnosticsUnderlineInformation DarknessLightInfoLine
  hi! link LspDiagnosticsUnderlineWarning DarknessLightWarnLine
else
  hi! link SpecialKey DarknessLightSubtle
endif

hi! link Comment DarknessLightComment
hi! link Underlined DarknessLightFgUnderline
hi! link Todo DarknessLightTodo

hi! link Error DarknessLightError
hi! link SpellBad DarknessLightErrorLine
hi! link SpellLocal DarknessLightWarnLine
hi! link SpellCap DarknessLightInfoLine
hi! link SpellRare DarknessLightInfoLine

hi! link Constant DarknessLightConstants
hi! link String DarknessLightStringColor
hi! link Character DarknessLightKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier DarknessLightFg
hi! link Function DarknessLightClassName

hi! link Statement DarknessLightKeyword
hi! link Conditional DarknessLightKeyword
hi! link Repeat DarknessLightKeyword
hi! link Label DarknessLightKeyword
hi! link Operator DarknessLightKeyword
hi! link Keyword DarknessLightKeyword
hi! link Exception DarknessLightKeyword

hi! link PreProc DarknessLightKeyword
hi! link Include DarknessLightKeyword
hi! link Define DarknessLightKeyword
hi! link Macro DarknessLightKeyword
hi! link PreCondit DarknessLightKeyword
hi! link StorageClass DarknessLightKeyword
hi! link Structure DarknessLightKeyword
hi! link Typedef DarknessLightKeyword

hi! link Type DarknessLightKeyColorItalic

hi! link Delimiter DarknessLightFg

hi! link Special DarknessLightKeyword
hi! link SpecialComment DarknessLightKeyColorItalic
hi! link Tag DarknessLightKeyColor
hi! link helpHyperTextJump DarknessLightLink
hi! link helpCommand DarknessLightConstants
hi! link helpExample DarknessLightClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
