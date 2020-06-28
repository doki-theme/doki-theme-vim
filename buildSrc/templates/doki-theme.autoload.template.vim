" Palette: {{{

let g:{{themeName}}#palette           = {}
let g:{{themeName}}#palette.fg        = ['{{foregroundColor}}', {{foregroundColor$x256}}]

let g:{{themeName}}#palette.bglighter = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bglight   = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bg        = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bgdark    = ['{{baseBackground}}', {{baseBackground$x256}}]
let g:{{themeName}}#palette.bgdarker  = ['{{baseBackground}}', {{baseBackground$x256}}]

let g:{{themeName}}#palette.comment   = ['#6272A4',  61]
let g:{{themeName}}#palette.selection = ['{{selectionBackground}}', {{selectionBackground$x256}}]
let g:{{themeName}}#palette.subtle    = ['#424450', 238]

let g:{{themeName}}#palette.cyan      = ['#8BE9FD', 117]
let g:{{themeName}}#palette.green     = ['#50FA7B',  84]
let g:{{themeName}}#palette.orange    = ['#FFB86C', 215]
let g:{{themeName}}#palette.pink      = ['#FF79C6', 212]
let g:{{themeName}}#palette.purple    = ['#BD93F9', 141]
let g:{{themeName}}#palette.red       = ['#FF5555', 203]
let g:{{themeName}}#palette.string_color    = ['{{stringColor}}', {{stringColor$x256}}]

"
" Terminal Colors
"
let g:{{themeName}}#palette.color_0  = '#21222C'
let g:{{themeName}}#palette.color_1  = '#FF5555'
let g:{{themeName}}#palette.color_2  = '#50FA7B'
let g:{{themeName}}#palette.color_3  = '#F1FA8C'
let g:{{themeName}}#palette.color_4  = '#BD93F9'
let g:{{themeName}}#palette.color_5  = '#FF79C6'
let g:{{themeName}}#palette.color_6  = '#8BE9FD'
let g:{{themeName}}#palette.color_7  = '#F8F8F2'
let g:{{themeName}}#palette.color_8  = '#6272A4'
let g:{{themeName}}#palette.color_9  = '#FF6E6E'
let g:{{themeName}}#palette.color_10 = '#69FF94'
let g:{{themeName}}#palette.color_11 = '#FFFFA5'
let g:{{themeName}}#palette.color_12 = '#D6ACFF'
let g:{{themeName}}#palette.color_13 = '#FF92DF'
let g:{{themeName}}#palette.color_14 = '#A4FFFF'
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
