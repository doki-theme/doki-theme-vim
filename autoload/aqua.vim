" Palette: 

let g:aqua#palette           = {}
let g:aqua#palette.fg        = ['#bbbbbb', 250]

let g:aqua#palette.bglighter = ['#282b42', 236]
let g:aqua#palette.bglight   = ['#282b42', 236]
let g:aqua#palette.bg        = ['#282b42', 236]
let g:aqua#palette.bgdark    = ['#282b42', 236]
let g:aqua#palette.bgdarker  = ['#282b42', 236]

let g:aqua#palette.comment   = ['#6272a4',  61]
let g:aqua#palette.selection = ['#4C637A', 60]
let g:aqua#palette.subtle    = ['#2d3047', 236]

let g:aqua#palette.key_color      = ['#6893f3', 69]
let g:aqua#palette.class_name     = ['#8dc6ef', 117]
let g:aqua#palette.parameter_color    = ['#FFB86C', 215]
let g:aqua#palette.keyword_color      = ['#988F9A', 246]
let g:aqua#palette.constants_color    = ['#86dbfd', 117]
let g:aqua#palette.red       = ['#FF5555', 203]
let g:aqua#palette.string_color    = ['#f4fa8c', 228]

"
" Terminal Colors
"
let g:aqua#palette.color_0  = '#21222C'
let g:aqua#palette.color_1  = '#E356A7'
let g:aqua#palette.color_2  = '#42E66C'
let g:aqua#palette.color_3  = '#F1FA8C'
let g:aqua#palette.color_4  = '#9B6BDF'
let g:aqua#palette.color_5  = '#E64747'
let g:aqua#palette.color_6  = '#75D7EC'
let g:aqua#palette.color_7  = '#F8F8F2'
let g:aqua#palette.color_8  = '#6272A4'
let g:aqua#palette.color_9  = '#E356A7'
let g:aqua#palette.color_10 = '#42E66C'
let g:aqua#palette.color_11 = '#EFA554'
let g:aqua#palette.color_12 = '#9B6BDF'
let g:aqua#palette.color_13 = '#E64747'
let g:aqua#palette.color_14 = '#75D7EC'
let g:aqua#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! aqua#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'aqua'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
