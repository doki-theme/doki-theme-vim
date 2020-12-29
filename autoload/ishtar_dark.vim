" Palette: 

let g:ishtar_dark#palette           = {}
let g:ishtar_dark#palette.fg        = ['#c2c2c2', 251]

let g:ishtar_dark#palette.bglighter = ['#0f0d0e', 233]
let g:ishtar_dark#palette.bglight   = ['#0f0d0e', 233]
let g:ishtar_dark#palette.bg        = ['#0f0d0e', 233]
let g:ishtar_dark#palette.bgdark    = ['#0f0d0e', 233]
let g:ishtar_dark#palette.bgdarker  = ['#0f0d0e', 233]

let g:ishtar_dark#palette.comment   = ['#6272a4',  61]
let g:ishtar_dark#palette.selection = ['#553919', 237]
let g:ishtar_dark#palette.subtle    = ['#1A1913', 234]

let g:ishtar_dark#palette.key_color      = ['#0f6ab7', 25]
let g:ishtar_dark#palette.class_name     = ['#7C7C82', 244]
let g:ishtar_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:ishtar_dark#palette.keyword_color      = ['#db974d', 173]
let g:ishtar_dark#palette.constants_color    = ['#86dbfd', 117]
let g:ishtar_dark#palette.red       = ['#FF5555', 203]
let g:ishtar_dark#palette.string_color    = ['#a18649', 137]

"
" Terminal Colors
"
let g:ishtar_dark#palette.color_0  = '#21222C'
let g:ishtar_dark#palette.color_1  = '#E356A7'
let g:ishtar_dark#palette.color_2  = '#42E66C'
let g:ishtar_dark#palette.color_3  = '#F1FA8C'
let g:ishtar_dark#palette.color_4  = '#9B6BDF'
let g:ishtar_dark#palette.color_5  = '#E64747'
let g:ishtar_dark#palette.color_6  = '#75D7EC'
let g:ishtar_dark#palette.color_7  = '#F8F8F2'
let g:ishtar_dark#palette.color_8  = '#6272A4'
let g:ishtar_dark#palette.color_9  = '#E356A7'
let g:ishtar_dark#palette.color_10 = '#42E66C'
let g:ishtar_dark#palette.color_11 = '#EFA554'
let g:ishtar_dark#palette.color_12 = '#9B6BDF'
let g:ishtar_dark#palette.color_13 = '#E64747'
let g:ishtar_dark#palette.color_14 = '#75D7EC'
let g:ishtar_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! ishtar_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'ishtar_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
