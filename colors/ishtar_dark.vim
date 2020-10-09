" Configuration: 

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'ishtar_dark'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

" Palette: 

let s:fg        = g:ishtar_dark#palette.fg

let s:bglighter = g:ishtar_dark#palette.bglighter
let s:bglight   = g:ishtar_dark#palette.bglight
let s:bg        = g:ishtar_dark#palette.bg
let s:bgdark    = g:ishtar_dark#palette.bgdark
let s:bgdarker  = g:ishtar_dark#palette.bgdarker

let s:comment   = g:ishtar_dark#palette.comment
let s:selection = g:ishtar_dark#palette.selection
let s:subtle    = g:ishtar_dark#palette.subtle

let s:key_color      = g:ishtar_dark#palette.key_color
let s:class_name     = g:ishtar_dark#palette.class_name
let s:parameter_color    = g:ishtar_dark#palette.parameter_color
let s:keyword_color      = g:ishtar_dark#palette.keyword_color
let s:constants_color    = g:ishtar_dark#palette.constants_color
let s:red       = g:ishtar_dark#palette.red
let s:string_color    = g:ishtar_dark#palette.string_color

let s:none      = ['NONE', 'NONE']

if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:ishtar_dark#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:ishtar_dark#palette['color_' . s:i])
  endfor
endif

" }}}2
" User Configuration: 

if !exists('g:ishtar_dark_bold')
  let g:ishtar_dark_bold = 1
endif

if !exists('g:ishtar_dark_italic')
  let g:ishtar_dark_italic = 1
endif

if !exists('g:ishtar_dark_underline')
  let g:ishtar_dark_underline = 1
endif

if !exists('g:ishtar_dark_undercurl') && g:ishtar_dark_underline != 0
  let g:ishtar_dark_undercurl = 1
endif

if !exists('g:ishtar_dark_inverse')
  let g:ishtar_dark_inverse = 1
endif

if !exists('g:ishtar_dark_colorterm')
  let g:ishtar_dark_colorterm = 1
endif

"}}}2
" Script Helpers: 

let s:attrs = {
      \ 'bold': g:ishtar_dark_bold == 1 ? 'bold' : 0,
      \ 'italic': g:ishtar_dark_italic == 1 ? 'italic' : 0,
      \ 'underline': g:ishtar_dark_underline == 1 ? 'underline' : 0,
      \ 'undercurl': g:ishtar_dark_undercurl == 1 ? 'undercurl' : 0,
      \ 'inverse': g:ishtar_dark_inverse == 1 ? 'inverse' : 0,
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

call s:h('IshtarDarkBgLight', s:none, s:bglight)
call s:h('IshtarDarkBgLighter', s:none, s:bglighter)
call s:h('IshtarDarkBgDark', s:none, s:bgdark)
call s:h('IshtarDarkBgDarker', s:none, s:bgdarker)

call s:h('IshtarDarkFg', s:fg)
call s:h('IshtarDarkFgUnderline', s:fg, s:none, [s:attrs.underline])
call s:h('IshtarDarkFgBold', s:fg, s:none, [s:attrs.bold])

call s:h('IshtarDarkComment', s:comment)
call s:h('IshtarDarkCommentBold', s:comment, s:none, [s:attrs.bold])

call s:h('IshtarDarkSelection', s:none, s:selection)

call s:h('IshtarDarkSubtle', s:subtle)

call s:h('IshtarDarkKeyColor', s:key_color)
call s:h('IshtarDarkKeyColorItalic', s:key_color, s:none, [s:attrs.italic])

call s:h('IshtarDarkClassName', s:class_name)
call s:h('IshtarDarkClassNameBold', s:class_name, s:none, [s:attrs.bold])
call s:h('IshtarDarkClassNameItalic', s:class_name, s:none, [s:attrs.italic])
call s:h('IshtarDarkClassNameItalicUnderline', s:class_name, s:none, [s:attrs.italic, s:attrs.underline])

call s:h('IshtarDarkParameter', s:parameter_color)
call s:h('IshtarDarkParameterBold', s:parameter_color, s:none, [s:attrs.bold])
call s:h('IshtarDarkParameterItalic', s:parameter_color, s:none, [s:attrs.italic])
call s:h('IshtarDarkParameterBoldItalic', s:parameter_color, s:none, [s:attrs.bold, s:attrs.italic])
call s:h('IshtarDarkParameterInverse', s:bg, s:parameter_color)

call s:h('IshtarDarkKeyword', s:keyword_color)
call s:h('IshtarDarkKeywordItalic', s:keyword_color, s:none, [s:attrs.italic])

call s:h('IshtarDarkConstants', s:constants_color)
call s:h('IshtarDarkConstantsBold', s:constants_color, s:none, [s:attrs.bold])
call s:h('IshtarDarkConstantsItalic', s:constants_color, s:none, [s:attrs.italic])

call s:h('IshtarDarkRed', s:red)
call s:h('IshtarDarkRedInverse', s:fg, s:red)

call s:h('IshtarDarkStringColor', s:string_color)
call s:h('IshtarDarkStringColorItalic', s:string_color, s:none, [s:attrs.italic])

call s:h('IshtarDarkError', s:red, s:none, [], s:red)

call s:h('IshtarDarkErrorLine', s:none, s:none, [s:attrs.undercurl], s:red)
call s:h('IshtarDarkWarnLine', s:none, s:none, [s:attrs.undercurl], s:parameter_color)
call s:h('IshtarDarkInfoLine', s:none, s:none, [s:attrs.undercurl], s:key_color)

call s:h('IshtarDarkTodo', s:key_color, s:none, [s:attrs.bold, s:attrs.inverse])
call s:h('IshtarDarkSearch', s:class_name, s:none, [s:attrs.inverse])
call s:h('IshtarDarkBoundary', s:comment, s:bgdark)
call s:h('IshtarDarkLink', s:key_color, s:none, [s:attrs.underline])

call s:h('IshtarDarkDiffChange', s:parameter_color, s:none)
call s:h('IshtarDarkDiffText', s:bg, s:parameter_color)
call s:h('IshtarDarkDiffDelete', s:red, s:bgdark)

" }}}2

" }}}
" User Interface: 


" Required as some plugins will overwrite
" call s:h('Normal', s:fg, g:ishtar_dark_colorterm || has('gui_running') ? s:bg : s:none )
call s:h('StatusLine', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineNC', s:none, s:bglight)
call s:h('StatusLineTerm', s:none, s:bglighter, [s:attrs.bold])
call s:h('StatusLineTermNC', s:none, s:bglight)
call s:h('WildMenu', s:bg, s:constants_color, [s:attrs.bold])
call s:h('CursorLine', s:none, s:subtle)

" hi! link ColorColumn  IshtarDarkBgDark
hi! link CursorColumn CursorLine
hi! link CursorLineNr IshtarDarkStringColor
hi! link DiffAdd      IshtarDarkClassName
hi! link DiffAdded    DiffAdd
hi! link DiffChange   IshtarDarkDiffChange
hi! link DiffDelete   IshtarDarkDiffDelete
hi! link DiffRemoved  DiffDelete
hi! link DiffText     IshtarDarkDiffText
hi! link Directory    IshtarDarkConstantsBold
hi! link ErrorMsg     IshtarDarkRedInverse
hi! link FoldColumn   IshtarDarkSubtle
hi! link Folded       IshtarDarkBoundary
hi! link IncSearch    IshtarDarkParameterInverse
call s:h('LineNr', s:comment)
hi! link MoreMsg      IshtarDarkFgBold
hi! link NonText      IshtarDarkSubtle
" hi! link Pmenu        IshtarDarkBgDark
" hi! link PmenuSbar    IshtarDarkBgDark
hi! link PmenuSel     IshtarDarkSelection
hi! link PmenuThumb   IshtarDarkSelection
hi! link Question     IshtarDarkFgBold
hi! link Search       IshtarDarkSearch
call s:h('SignColumn', s:comment)
hi! link TabLine      IshtarDarkBoundary
" hi! link TabLineFill  IshtarDarkBgDarker
hi! link TabLineSel   Normal
hi! link Title        IshtarDarkClassNameBold
hi! link VertSplit    IshtarDarkBoundary
hi! link Visual       IshtarDarkSelection
hi! link VisualNOS    Visual
hi! link WarningMsg   IshtarDarkParameterInverse

" }}}
" Syntax: 

" Required as some plugins will overwrite
call s:h('MatchParen', s:class_name, s:none, [s:attrs.underline])
call s:h('Conceal', s:key_color, s:none)

" Neovim uses SpecialKey for escape characters only. Vim uses it for that, plus whitespace.
if has('nvim')
  hi! link SpecialKey IshtarDarkRed
  hi! link LspDiagnosticsUnderline IshtarDarkFgUnderline
  hi! link LspDiagnosticsInformation IshtarDarkKeyColor
  hi! link LspDiagnosticsHint IshtarDarkKeyColor
  hi! link LspDiagnosticsError IshtarDarkError
  hi! link LspDiagnosticsWarning IshtarDarkParameter
  hi! link LspDiagnosticsUnderlineError IshtarDarkErrorLine
  hi! link LspDiagnosticsUnderlineHint IshtarDarkInfoLine
  hi! link LspDiagnosticsUnderlineInformation IshtarDarkInfoLine
  hi! link LspDiagnosticsUnderlineWarning IshtarDarkWarnLine
else
  hi! link SpecialKey IshtarDarkSubtle
endif

hi! link Comment IshtarDarkComment
hi! link Underlined IshtarDarkFgUnderline
hi! link Todo IshtarDarkTodo

hi! link Error IshtarDarkError
hi! link SpellBad IshtarDarkErrorLine
hi! link SpellLocal IshtarDarkWarnLine
hi! link SpellCap IshtarDarkInfoLine
hi! link SpellRare IshtarDarkInfoLine

hi! link Constant IshtarDarkConstants
hi! link String IshtarDarkStringColor
hi! link Character IshtarDarkKeyword
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant

hi! link Identifier IshtarDarkFg
hi! link Function IshtarDarkClassName

hi! link Statement IshtarDarkKeyword
hi! link Conditional IshtarDarkKeyword
hi! link Repeat IshtarDarkKeyword
hi! link Label IshtarDarkKeyword
hi! link Operator IshtarDarkKeyword
hi! link Keyword IshtarDarkKeyword
hi! link Exception IshtarDarkKeyword

hi! link PreProc IshtarDarkKeyword
hi! link Include IshtarDarkKeyword
hi! link Define IshtarDarkKeyword
hi! link Macro IshtarDarkKeyword
hi! link PreCondit IshtarDarkKeyword
hi! link StorageClass IshtarDarkKeyword
hi! link Structure IshtarDarkKeyword
hi! link Typedef IshtarDarkKeyword

hi! link Type IshtarDarkKeyColorItalic

hi! link Delimiter IshtarDarkFg

hi! link Special IshtarDarkKeyword
hi! link SpecialComment IshtarDarkKeyColorItalic
hi! link Tag IshtarDarkKeyColor
hi! link helpHyperTextJump IshtarDarkLink
hi! link helpCommand IshtarDarkConstants
hi! link helpExample IshtarDarkClassName
hi! link helpBacktick Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0 et:
