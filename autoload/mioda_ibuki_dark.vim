" Palette: 

let g:mioda_ibuki_dark#palette           = {}
let g:mioda_ibuki_dark#palette.fg        = ['#bbbbbb', 250]

let g:mioda_ibuki_dark#palette.bglighter = ['#141617', 233]
let g:mioda_ibuki_dark#palette.bglight   = ['#141617', 233]
let g:mioda_ibuki_dark#palette.bg        = ['#141617', 233]
let g:mioda_ibuki_dark#palette.bgdark    = ['#141617', 233]
let g:mioda_ibuki_dark#palette.bgdarker  = ['#141617', 233]

let g:mioda_ibuki_dark#palette.comment   = ['#6272a4',  61]
let g:mioda_ibuki_dark#palette.selection = ['#452735', 236]
let g:mioda_ibuki_dark#palette.subtle    = ['#222526', 235]

let g:mioda_ibuki_dark#palette.key_color      = ['#5ea7ff', 75]
let g:mioda_ibuki_dark#palette.class_name     = ['#8daeef', 111]
let g:mioda_ibuki_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:mioda_ibuki_dark#palette.keyword_color      = ['#8b8b8b', 245]
let g:mioda_ibuki_dark#palette.constants_color    = ['#86dbfd', 117]
let g:mioda_ibuki_dark#palette.red       = ['#FF5555', 203]
let g:mioda_ibuki_dark#palette.string_color    = ['#f4fa8c', 228]

"
" Terminal Colors
"
let g:mioda_ibuki_dark#palette.color_0  = '#21222C'
let g:mioda_ibuki_dark#palette.color_1  = '#E356A7'
let g:mioda_ibuki_dark#palette.color_2  = '#42E66C'
let g:mioda_ibuki_dark#palette.color_3  = '#F1FA8C'
let g:mioda_ibuki_dark#palette.color_4  = '#9B6BDF'
let g:mioda_ibuki_dark#palette.color_5  = '#E64747'
let g:mioda_ibuki_dark#palette.color_6  = '#75D7EC'
let g:mioda_ibuki_dark#palette.color_7  = '#F8F8F2'
let g:mioda_ibuki_dark#palette.color_8  = '#6272A4'
let g:mioda_ibuki_dark#palette.color_9  = '#E356A7'
let g:mioda_ibuki_dark#palette.color_10 = '#42E66C'
let g:mioda_ibuki_dark#palette.color_11 = '#EFA554'
let g:mioda_ibuki_dark#palette.color_12 = '#9B6BDF'
let g:mioda_ibuki_dark#palette.color_13 = '#E64747'
let g:mioda_ibuki_dark#palette.color_14 = '#75D7EC'
let g:mioda_ibuki_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! mioda_ibuki_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'mioda_ibuki_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
