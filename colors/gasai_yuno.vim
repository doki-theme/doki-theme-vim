" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'gasai_yuno'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:gasai_yuno#palette.fg

let s:bglighter = g:gasai_yuno#palette.bglighter
let s:bglight   = g:gasai_yuno#palette.bglight
let s:bg        = g:gasai_yuno#palette.bg
let s:bgdark    = g:gasai_yuno#palette.bgdark
let s:bgdarker  = g:gasai_yuno#palette.bgdarker

let s:comment   = g:gasai_yuno#palette.comment
let s:selection = g:gasai_yuno#palette.selection
let s:subtle    = g:gasai_yuno#palette.subtle

let s:key_color      = g:gasai_yuno#palette.key_color
let s:class_name     = g:gasai_yuno#palette.class_name
let s:parameter_color    = g:gasai_yuno#palette.parameter_color
let s:keyword_color      = g:gasai_yuno#palette.keyword_color
let s:constants_color    = g:gasai_yuno#palette.constants_color
let s:red       = g:gasai_yuno#palette.red
let s:string_color    = g:gasai_yuno#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:gasai_yuno#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:gasai_yuno#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:gasai_yuno_bold')
  let g:gasai_yuno_bold = 1
endif

if !exists('g:gasai_yuno_italic')
  let g:gasai_yuno_italic = 1
endif

if !exists('g:gasai_yuno_underline')
  let g:gasai_yuno_underline = 1
endif

if !exists('g:gasai_yuno_undercurl') && g:gasai_yuno_underline != 0
  let g:gasai_yuno_undercurl = 1
endif

if !exists('g:gasai_yuno_inverse')
  let g:gasai_yuno_inverse = 1
endif

if !exists('g:gasai_yuno_colorterm')
  let g:gasai_yuno_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:gasai_yuno_bold == 1 ? 'bold' : 0,
      \ 'italic': g:gasai_yuno_italic == 1 ? 'italic' : 0,
      \ 'underline': g:gasai_yuno_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:gasai_yuno_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:gasai_yuno_inverse == 1 ? 'inverse' : 0,
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

call s:h('GasaiYunoBgLight', s:none, s:bglight)
call s:h('GasaiYunoBgLighter', s:none, s:bglighter)
call s:h('GasaiYunoBgDark', s:none, s:bgdark)
call s:h('GasaiYunoBgDarker', s:none, s:bgdarker)

call s:h('GasaiYunoFg', s:fg)
call s:h('GasaiYunoFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('GasaiYunoFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('GasaiYunoComment', s:comment)
call s:h('GasaiYunoCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('GasaiYunoSelection', s:none, s:selection)

call s:h('GasaiYunoSubtle', s:subtle)

call s:h('GasaiYunoKeyColor', s:key_color)
call s:h('GasaiYunoKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('GasaiYunoClassName', s:class_name)
call s:h('GasaiYunoClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('GasaiYunoClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('GasaiYunoClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('GasaiYunoParameter', s:parameter_color)
call s:h('GasaiYunoParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('GasaiYunoParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('GasaiYunoParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('GasaiYunoParameterInverse', s:bg, s:parameter_color)

call s:h('GasaiYunoKeyword', s:keyword_color)
call s:h('GasaiYunoKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('GasaiYunoConstants', s:constants_color)
call s:h('GasaiYunoConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('GasaiYunoConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('GasaiYunoRed', s:red)
call s:h('GasaiYunoRedInverse', s:fg, s:red)

call s:h('GasaiYunoStringColor', s:string_color)
call s:h('GasaiYunoStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('GasaiYunoError', s:red, s:none, [], s:red)

call s:h('GasaiYunoErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('GasaiYunoWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('GasaiYunoInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('GasaiYunoTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('GasaiYunoSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('GasaiYunoBoundary', s:comment, s:bgdark)
call s:h('GasaiYunoLink', s:key_color, s:none, [s:attrs.underline])

call s:h('GasaiYunoDiffChange', s:parameter_color, s:none)
call s:h('GasaiYunoDiffText', s:bg, s:parameter_color)
call s:h('GasaiYunoDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:gasai_yuno_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  GasaiYunoBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr GasaiYunoStringColor
hi! link DiffAdd      GasaiYunoClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   GasaiYunoDiffChange
hi! link DiffDelete   GasaiYunoDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     GasaiYunoDiffText
hi! link Directory    GasaiYunoConstantsBold
hi! link ErrorMsg     GasaiYunoRedInverse
hi! link FoldColumn   GasaiYunoSubtle
hi! link Folded       GasaiYunoBoundary
hi! link IncSearch    GasaiYunoParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      GasaiYunoFgBold
hi! link NonText      GasaiYunoSubtle
" hi! link Pmenu        GasaiYunoBgDark
" hi! link PmenuSbar    GasaiYunoBgDark
hi! link PmenuSel     GasaiYunoSelection
hi! link PmenuThumb   GasaiYunoSelection
hi! link Question     GasaiYunoFgBold
hi! link Search       GasaiYunoSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      GasaiYunoBoundary
" hi! link TabLineFill  GasaiYunoBgDarker
hi! link TabLineSel   Normal
hi! link Title        GasaiYunoClassNameBold
hi! link VertSplit    GasaiYunoBoundary
hi! link Visual       GasaiYunoSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   GasaiYunoParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey GasaiYunoRed
  hi! link LspDiagnosticsUnderline GasaiYunoFgUnderline
  hi! link LspDiagnosticsInformation GasaiYunoKeyColor
  hi! link LspDiagnosticsHint GasaiYunoKeyColor
  hi! link LspDiagnosticsError GasaiYunoError
  hi! link LspDiagnosticsWarning GasaiYunoParameter
  hi! link LspDiagnosticsUnderlineError GasaiYunoErrorLine
  hi! link LspDiagnosticsUnderlineHint GasaiYunoInfoLine
  hi! link LspDiagnosticsUnderlineInformation GasaiYunoInfoLine
  hi! link LspDiagnosticsUnderlineWarning GasaiYunoWarnLine
else
  hi! link SpecialKey GasaiYunoSubtle
endif

hi! link Comment GasaiYunoComment
hi! link Underlined GasaiYunoFgUnderline
hi! link Todo GasaiYunoTodo

hi! link Error GasaiYunoError
hi! link SpellBad GasaiYunoErrorLine
hi! link SpellLocal GasaiYunoWarnLine
hi! link SpellCap GasaiYunoInfoLine
hi! link SpellRare GasaiYunoInfoLine

hi! link Constant GasaiYunoConstants
hi! link String GasaiYunoStringColor
hi! link Character GasaiYunoKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier GasaiYunoFg
hi! link Function GasaiYunoClassName

hi! link Statement GasaiYunoKeyword
hi! link Conditional GasaiYunoKeyword
hi! link Repeat GasaiYunoKeyword
hi! link Label GasaiYunoKeyword
hi! link Operator GasaiYunoKeyword
hi! link Keyword GasaiYunoKeyword
hi! link Exception GasaiYunoKeyword

hi! link PreProc GasaiYunoKeyword
hi! link Include GasaiYunoKeyword
hi! link Define GasaiYunoKeyword
hi! link Macro GasaiYunoKeyword
hi! link PreCondit GasaiYunoKeyword
hi! link StorageClass GasaiYunoKeyword
hi! link Structure GasaiYunoKeyword
hi! link Typedef GasaiYunoKeyword

hi! link Type GasaiYunoKeyColorItalic

hi! link Delimiter GasaiYunoFg

hi! link Special GasaiYunoKeyword
hi! link SpecialComment GasaiYunoKeyColorItalic
hi! link Tag GasaiYunoKeyColor
hi! link helpHyperTextJump GasaiYunoLink
hi! link helpCommand GasaiYunoConstants
hi! link helpExample GasaiYunoClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
