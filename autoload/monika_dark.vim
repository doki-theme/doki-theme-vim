" Palette: 

let g:monika_dark#palette           = {}
let g:monika_dark#palette.fg        = ['#bbbbbb', 250]

let g:monika_dark#palette.bglighter = ['#1A1E12', 234]
let g:monika_dark#palette.bglight   = ['#1A1E12', 234]
let g:monika_dark#palette.bg        = ['#1A1E12', 234]
let g:monika_dark#palette.bgdark    = ['#1A1E12', 234]
let g:monika_dark#palette.bgdarker  = ['#1A1E12', 234]

let g:monika_dark#palette.comment   = ['#4E6B4C',  239]
let g:monika_dark#palette.selection = ['#30432B', 236]
let g:monika_dark#palette.subtle    = ['#24291a', 235]

let g:monika_dark#palette.key_color      = ['#bca3aa', 248]
let g:monika_dark#palette.class_name     = ['#bca3aa', 248]
let g:monika_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:monika_dark#palette.keyword_color      = ['#3eae5d', 71]
let g:monika_dark#palette.constants_color    = ['#86dbfd', 117]
let g:monika_dark#palette.red       = ['#FF5555', 203]
let g:monika_dark#palette.string_color    = ['#f1fa8c', 228]

"
" Terminal Colors
"
let g:monika_dark#palette.color_0  = '#21222C'
let g:monika_dark#palette.color_1  = '#E356A7'
let g:monika_dark#palette.color_2  = '#42E66C'
let g:monika_dark#palette.color_3  = '#F1FA8C'
let g:monika_dark#palette.color_4  = '#9B6BDF'
let g:monika_dark#palette.color_5  = '#E64747'
let g:monika_dark#palette.color_6  = '#75D7EC'
let g:monika_dark#palette.color_7  = '#F8F8F2'
let g:monika_dark#palette.color_8  = '#6272A4'
let g:monika_dark#palette.color_9  = '#E356A7'
let g:monika_dark#palette.color_10 = '#42E66C'
let g:monika_dark#palette.color_11 = '#EFA554'
let g:monika_dark#palette.color_12 = '#9B6BDF'
let g:monika_dark#palette.color_13 = '#E64747'
let g:monika_dark#palette.color_14 = '#75D7EC'
let g:monika_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! monika_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'monika_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
