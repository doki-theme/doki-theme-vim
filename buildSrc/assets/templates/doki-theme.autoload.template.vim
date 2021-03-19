" Palette: {{{

let g:{{themeName}}#palette           = {}
let g:{{themeName}}#palette.fg        = ['{{foregroundColor}}', {{foregroundColor$x256}}]

let g:{{themeName}}#palette.bglighter = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bglight   = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bg        = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bgdark    = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bgdarker  = ['{{baseBackground}}', {{baseBackground$x256}}]

let g:{{themeName}}#palette.comment   = ['{{comments}}',  {{comments$x256}}]
let g:{{themeName}}#palette.selection = ['{{selectionBackground}}', {{selectionBackground$x256}}]
let g:{{themeName}}#palette.subtle    = ['{{caretRow}}', {{caretRow$x256}}]

let g:{{themeName}}#palette.key_color      = ['{{keyColor}}', {{keyColor$x256}}]
let g:{{themeName}}#palette.class_name     = ['{{classNameColor}}', {{classNameColor$x256}}]
let g:{{themeName}}#palette.parameter_color    = ['{{parameterColor}}', {{parameterColor$x256}}]
let g:{{themeName}}#palette.keyword_color      = ['{{keywordColor}}', {{keywordColor$x256}}]
let g:{{themeName}}#palette.constants_color    = ['{{constantColor}}', {{constantColor$x256}}]
let g:{{themeName}}#palette.red       = ['#FF5555', 203]
let g:{{themeName}}#palette.string_color    = ['{{stringColor}}', {{stringColor$x256}}]

"
" Terminal Colors
"
let g:{{themeName}}#palette.color_0  = '#21222C'
let g:{{themeName}}#palette.color_1  = '{{terminal.ansiRed}}'
let g:{{themeName}}#palette.color_2  = '{{terminal.ansiGreen}}'
let g:{{themeName}}#palette.color_3  = '#F1FA8C'
let g:{{themeName}}#palette.color_4  = '{{terminal.ansiBlue}}'
let g:{{themeName}}#palette.color_5  = '{{terminal.ansiMagenta}}'
let g:{{themeName}}#palette.color_6  = '{{terminal.ansiCyan}}'
let g:{{themeName}}#palette.color_7  = '#F8F8F2'
let g:{{themeName}}#palette.color_8  = '#6272A4'
let g:{{themeName}}#palette.color_9  = '{{terminal.ansiRed}}'
let g:{{themeName}}#palette.color_10 = '{{terminal.ansiGreen}}'
let g:{{themeName}}#palette.color_11 = '{{terminal.ansiYellow}}'
let g:{{themeName}}#palette.color_12 = '{{terminal.ansiBlue}}'
let g:{{themeName}}#palette.color_13 = '{{terminal.ansiMagenta}}'
let g:{{themeName}}#palette.color_14 = '{{terminal.ansiCyan}}'
let g:{{themeName}}#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! {{themeName}}#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# '{{themeName}}'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
