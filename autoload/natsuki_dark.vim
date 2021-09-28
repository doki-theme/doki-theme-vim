" Palette: 

let g:natsuki_dark#palette           = {}
let g:natsuki_dark#palette.fg        = ['#bbbbbb', 250]

let g:natsuki_dark#palette.bglighter = ['#310a29', 235]
let g:natsuki_dark#palette.bglight   = ['#310a29', 235]
let g:natsuki_dark#palette.bg        = ['#310a29', 235]
let g:natsuki_dark#palette.bgdark    = ['#310a29', 235]
let g:natsuki_dark#palette.bgdarker  = ['#310a29', 235]

let g:natsuki_dark#palette.comment   = ['#9C67AF',  133]
let g:natsuki_dark#palette.selection = ['#602b50', 239]
let g:natsuki_dark#palette.subtle    = ['#441539', 237]

let g:natsuki_dark#palette.key_color      = ['#FF9CD6', 218]
let g:natsuki_dark#palette.class_name     = ['#FF9CD6', 218]
let g:natsuki_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:natsuki_dark#palette.keyword_color      = ['#bca3aa', 248]
let g:natsuki_dark#palette.constants_color    = ['#86dbfd', 117]
let g:natsuki_dark#palette.red       = ['#FF5555', 203]
let g:natsuki_dark#palette.string_color    = ['#f1fa8c', 228]

"
" Terminal Colors
"
let g:natsuki_dark#palette.color_0  = '#21222C'
let g:natsuki_dark#palette.color_1  = '#E356A7'
let g:natsuki_dark#palette.color_2  = '#42E66C'
let g:natsuki_dark#palette.color_3  = '#F1FA8C'
let g:natsuki_dark#palette.color_4  = '#9B6BDF'
let g:natsuki_dark#palette.color_5  = '#E64747'
let g:natsuki_dark#palette.color_6  = '#75D7EC'
let g:natsuki_dark#palette.color_7  = '#F8F8F2'
let g:natsuki_dark#palette.color_8  = '#6272A4'
let g:natsuki_dark#palette.color_9  = '#E356A7'
let g:natsuki_dark#palette.color_10 = '#42E66C'
let g:natsuki_dark#palette.color_11 = '#EFA554'
let g:natsuki_dark#palette.color_12 = '#9B6BDF'
let g:natsuki_dark#palette.color_13 = '#E64747'
let g:natsuki_dark#palette.color_14 = '#75D7EC'
let g:natsuki_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! natsuki_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'natsuki_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
