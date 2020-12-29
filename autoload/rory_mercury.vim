" Palette: 

let g:rory_mercury#palette           = {}
let g:rory_mercury#palette.fg        = ['#c3c3c3', 251]

let g:rory_mercury#palette.bglighter = ['#161619', 233]
let g:rory_mercury#palette.bglight   = ['#161619', 233]
let g:rory_mercury#palette.bg        = ['#161619', 233]
let g:rory_mercury#palette.bgdark    = ['#161619', 233]
let g:rory_mercury#palette.bgdarker  = ['#161619', 233]

let g:rory_mercury#palette.comment   = ['#6272a4',  61]
let g:rory_mercury#palette.selection = ['#391717', 234]
let g:rory_mercury#palette.subtle    = ['#1a1a1d', 234]

let g:rory_mercury#palette.key_color      = ['#6b7476', 243]
let g:rory_mercury#palette.class_name     = ['#BD93F9', 141]
let g:rory_mercury#palette.parameter_color    = ['#FFB86C', 215]
let g:rory_mercury#palette.keyword_color      = ['#e0474b', 167]
let g:rory_mercury#palette.constants_color    = ['#86dbfd', 117]
let g:rory_mercury#palette.red       = ['#FF5555', 203]
let g:rory_mercury#palette.string_color    = ['#4593f5', 69]

"
" Terminal Colors
"
let g:rory_mercury#palette.color_0  = '#21222C'
let g:rory_mercury#palette.color_1  = '#E356A7'
let g:rory_mercury#palette.color_2  = '#42E66C'
let g:rory_mercury#palette.color_3  = '#F1FA8C'
let g:rory_mercury#palette.color_4  = '#9B6BDF'
let g:rory_mercury#palette.color_5  = '#E64747'
let g:rory_mercury#palette.color_6  = '#75D7EC'
let g:rory_mercury#palette.color_7  = '#F8F8F2'
let g:rory_mercury#palette.color_8  = '#6272A4'
let g:rory_mercury#palette.color_9  = '#E356A7'
let g:rory_mercury#palette.color_10 = '#42E66C'
let g:rory_mercury#palette.color_11 = '#EFA554'
let g:rory_mercury#palette.color_12 = '#9B6BDF'
let g:rory_mercury#palette.color_13 = '#E64747'
let g:rory_mercury#palette.color_14 = '#75D7EC'
let g:rory_mercury#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rory_mercury#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rory_mercury'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
