" Palette: 

let g:darkness_dark#palette           = {}
let g:darkness_dark#palette.fg        = ['#c3c3c3', 251]

let g:darkness_dark#palette.bglighter = ['#080703', 232]
let g:darkness_dark#palette.bglight   = ['#080703', 232]
let g:darkness_dark#palette.bg        = ['#080703', 232]
let g:darkness_dark#palette.bgdark    = ['#080703', 232]
let g:darkness_dark#palette.bgdarker  = ['#080703', 232]

let g:darkness_dark#palette.comment   = ['#6272a4',  61]
let g:darkness_dark#palette.selection = ['#553919', 237]
let g:darkness_dark#palette.subtle    = ['#14110d', 233]

let g:darkness_dark#palette.key_color      = ['#3492b1', 67]
let g:darkness_dark#palette.class_name     = ['#d53a4a', 167]
let g:darkness_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:darkness_dark#palette.keyword_color      = ['#ffba2f', 214]
let g:darkness_dark#palette.constants_color    = ['#86dbfd', 117]
let g:darkness_dark#palette.red       = ['#FF5555', 203]
let g:darkness_dark#palette.string_color    = ['#4593f5', 69]

"
" Terminal Colors
"
let g:darkness_dark#palette.color_0  = '#21222C'
let g:darkness_dark#palette.color_1  = '#E356A7'
let g:darkness_dark#palette.color_2  = '#42E66C'
let g:darkness_dark#palette.color_3  = '#F1FA8C'
let g:darkness_dark#palette.color_4  = '#9B6BDF'
let g:darkness_dark#palette.color_5  = '#E64747'
let g:darkness_dark#palette.color_6  = '#75D7EC'
let g:darkness_dark#palette.color_7  = '#F8F8F2'
let g:darkness_dark#palette.color_8  = '#6272A4'
let g:darkness_dark#palette.color_9  = '#E356A7'
let g:darkness_dark#palette.color_10 = '#42E66C'
let g:darkness_dark#palette.color_11 = '#EFA554'
let g:darkness_dark#palette.color_12 = '#9B6BDF'
let g:darkness_dark#palette.color_13 = '#E64747'
let g:darkness_dark#palette.color_14 = '#75D7EC'
let g:darkness_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! darkness_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'darkness_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
