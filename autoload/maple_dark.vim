" Palette: 

let g:maple_dark#palette           = {}
let g:maple_dark#palette.fg        = ['#cccccc', 252]

let g:maple_dark#palette.bglighter = ['#321f1f', 235]
let g:maple_dark#palette.bglight   = ['#321f1f', 235]
let g:maple_dark#palette.bg        = ['#321f1f', 235]
let g:maple_dark#palette.bgdark    = ['#321f1f', 235]
let g:maple_dark#palette.bgdarker  = ['#321f1f', 235]

let g:maple_dark#palette.comment   = ['#807571',  243]
let g:maple_dark#palette.selection = ['#295043', 238]
let g:maple_dark#palette.subtle    = ['#352121', 235]

let g:maple_dark#palette.key_color      = ['#4fe1a9', 79]
let g:maple_dark#palette.class_name     = ['#ee7fdc', 212]
let g:maple_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:maple_dark#palette.keyword_color      = ['#FFD448', 221]
let g:maple_dark#palette.constants_color    = ['#ec93a1', 211]
let g:maple_dark#palette.red       = ['#FF5555', 203]
let g:maple_dark#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:maple_dark#palette.color_0  = '#21222C'
let g:maple_dark#palette.color_1  = '#E356A7'
let g:maple_dark#palette.color_2  = '#42E66C'
let g:maple_dark#palette.color_3  = '#F1FA8C'
let g:maple_dark#palette.color_4  = '#9B6BDF'
let g:maple_dark#palette.color_5  = '#E64747'
let g:maple_dark#palette.color_6  = '#75D7EC'
let g:maple_dark#palette.color_7  = '#F8F8F2'
let g:maple_dark#palette.color_8  = '#6272A4'
let g:maple_dark#palette.color_9  = '#E356A7'
let g:maple_dark#palette.color_10 = '#42E66C'
let g:maple_dark#palette.color_11 = '#EFA554'
let g:maple_dark#palette.color_12 = '#9B6BDF'
let g:maple_dark#palette.color_13 = '#E64747'
let g:maple_dark#palette.color_14 = '#75D7EC'
let g:maple_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! maple_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'maple_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
