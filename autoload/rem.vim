" Palette: 

let g:rem#palette           = {}
let g:rem#palette.fg        = ['#bbbbbb', 250]

let g:rem#palette.bglighter = ['#292A30', 236]
let g:rem#palette.bglight   = ['#292A30', 236]
let g:rem#palette.bg        = ['#292A30', 236]
let g:rem#palette.bgdark    = ['#292A30', 236]
let g:rem#palette.bgdarker  = ['#292A30', 236]

let g:rem#palette.comment   = ['#6272a4',  61]
let g:rem#palette.selection = ['#4C637A', 60]
let g:rem#palette.subtle    = ['#313439', 236]

let g:rem#palette.key_color      = ['#6893f3', 69]
let g:rem#palette.class_name     = ['#8dc6ef', 117]
let g:rem#palette.parameter_color    = ['#FFB86C', 215]
let g:rem#palette.keyword_color      = ['#988F9A', 246]
let g:rem#palette.constants_color    = ['#BD93F9', 141]
let g:rem#palette.red       = ['#FF5555', 203]
let g:rem#palette.string_color    = ['#f4fa8c', 228]

"
" Terminal Colors
"
let g:rem#palette.color_0  = '#21222C'
let g:rem#palette.color_1  = '#E356A7'
let g:rem#palette.color_2  = '#42E66C'
let g:rem#palette.color_3  = '#F1FA8C'
let g:rem#palette.color_4  = '#9B6BDF'
let g:rem#palette.color_5  = '#E64747'
let g:rem#palette.color_6  = '#75D7EC'
let g:rem#palette.color_7  = '#F8F8F2'
let g:rem#palette.color_8  = '#6272A4'
let g:rem#palette.color_9  = '#E356A7'
let g:rem#palette.color_10 = '#42E66C'
let g:rem#palette.color_11 = '#EFA554'
let g:rem#palette.color_12 = '#9B6BDF'
let g:rem#palette.color_13 = '#E64747'
let g:rem#palette.color_14 = '#75D7EC'
let g:rem#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rem#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rem'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
