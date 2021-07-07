" Palette: 

let g:vanilla#palette           = {}
let g:vanilla#palette.fg        = ['#cdcdcd', 252]

let g:vanilla#palette.bglighter = ['#2d2f43', 236]
let g:vanilla#palette.bglight   = ['#2d2f43', 236]
let g:vanilla#palette.bg        = ['#2d2f43', 236]
let g:vanilla#palette.bgdark    = ['#2d2f43', 236]
let g:vanilla#palette.bgdarker  = ['#2d2f43', 236]

let g:vanilla#palette.comment   = ['#686a80',  242]
let g:vanilla#palette.selection = ['#374872', 238]
let g:vanilla#palette.subtle    = ['#333446', 237]

let g:vanilla#palette.key_color      = ['#6a96e9', 68]
let g:vanilla#palette.class_name     = ['#9d8df6', 141]
let g:vanilla#palette.parameter_color    = ['#FFB86C', 215]
let g:vanilla#palette.keyword_color      = ['#FFD448', 221]
let g:vanilla#palette.constants_color    = ['#5ddeda', 80]
let g:vanilla#palette.red       = ['#FF5555', 203]
let g:vanilla#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:vanilla#palette.color_0  = '#21222C'
let g:vanilla#palette.color_1  = '#E356A7'
let g:vanilla#palette.color_2  = '#42E66C'
let g:vanilla#palette.color_3  = '#F1FA8C'
let g:vanilla#palette.color_4  = '#9B6BDF'
let g:vanilla#palette.color_5  = '#E64747'
let g:vanilla#palette.color_6  = '#75D7EC'
let g:vanilla#palette.color_7  = '#F8F8F2'
let g:vanilla#palette.color_8  = '#6272A4'
let g:vanilla#palette.color_9  = '#E356A7'
let g:vanilla#palette.color_10 = '#42E66C'
let g:vanilla#palette.color_11 = '#EFA554'
let g:vanilla#palette.color_12 = '#9B6BDF'
let g:vanilla#palette.color_13 = '#E64747'
let g:vanilla#palette.color_14 = '#75D7EC'
let g:vanilla#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! vanilla#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'vanilla'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
