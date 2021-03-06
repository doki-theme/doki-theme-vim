" Palette: 

let g:mai_dark#palette           = {}
let g:mai_dark#palette.fg        = ['#bbbbbb', 250]

let g:mai_dark#palette.bglighter = ['#25254B', 235]
let g:mai_dark#palette.bglight   = ['#25254B', 235]
let g:mai_dark#palette.bg        = ['#25254B', 235]
let g:mai_dark#palette.bgdark    = ['#25254B', 235]
let g:mai_dark#palette.bgdarker  = ['#25254B', 235]

let g:mai_dark#palette.comment   = ['#6272a4',  61]
let g:mai_dark#palette.selection = ['#235161', 23]
let g:mai_dark#palette.subtle    = ['#2d2d52', 236]

let g:mai_dark#palette.key_color      = ['#50cefb', 81]
let g:mai_dark#palette.class_name     = ['#61dba0', 79]
let g:mai_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:mai_dark#palette.keyword_color      = ['#ebd5d4', 188]
let g:mai_dark#palette.constants_color    = ['#86dbfd', 117]
let g:mai_dark#palette.red       = ['#FF5555', 203]
let g:mai_dark#palette.string_color    = ['#EFA554', 215]

"
" Terminal Colors
"
let g:mai_dark#palette.color_0  = '#21222C'
let g:mai_dark#palette.color_1  = '#E356A7'
let g:mai_dark#palette.color_2  = '#42E66C'
let g:mai_dark#palette.color_3  = '#F1FA8C'
let g:mai_dark#palette.color_4  = '#9B6BDF'
let g:mai_dark#palette.color_5  = '#E64747'
let g:mai_dark#palette.color_6  = '#75D7EC'
let g:mai_dark#palette.color_7  = '#F8F8F2'
let g:mai_dark#palette.color_8  = '#6272A4'
let g:mai_dark#palette.color_9  = '#E356A7'
let g:mai_dark#palette.color_10 = '#42E66C'
let g:mai_dark#palette.color_11 = '#EFA554'
let g:mai_dark#palette.color_12 = '#9B6BDF'
let g:mai_dark#palette.color_13 = '#E64747'
let g:mai_dark#palette.color_14 = '#75D7EC'
let g:mai_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! mai_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'mai_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
