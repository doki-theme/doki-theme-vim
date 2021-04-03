" Palette: 

let g:rias_onyx#palette           = {}
let g:rias_onyx#palette.fg        = ['#d8d8d8', 188]

let g:rias_onyx#palette.bglighter = ['#130000', 16]
let g:rias_onyx#palette.bglight   = ['#130000', 16]
let g:rias_onyx#palette.bg        = ['#130000', 16]
let g:rias_onyx#palette.bgdark    = ['#130000', 16]
let g:rias_onyx#palette.bgdarker  = ['#130000', 16]

let g:rias_onyx#palette.comment   = ['#694f4d',  239]
let g:rias_onyx#palette.selection = ['#390c10', 233]
let g:rias_onyx#palette.subtle    = ['#1e0607', 232]

let g:rias_onyx#palette.key_color      = ['#b2dbe3', 152]
let g:rias_onyx#palette.class_name     = ['#5a84dd', 68]
let g:rias_onyx#palette.parameter_color    = ['#FFB86C', 215]
let g:rias_onyx#palette.keyword_color      = ['#27c0b4', 37]
let g:rias_onyx#palette.constants_color    = ['#E356A7', 169]
let g:rias_onyx#palette.red       = ['#FF5555', 203]
let g:rias_onyx#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:rias_onyx#palette.color_0  = '#21222C'
let g:rias_onyx#palette.color_1  = '#E356A7'
let g:rias_onyx#palette.color_2  = '#42E66C'
let g:rias_onyx#palette.color_3  = '#F1FA8C'
let g:rias_onyx#palette.color_4  = '#9B6BDF'
let g:rias_onyx#palette.color_5  = '#E64747'
let g:rias_onyx#palette.color_6  = '#75D7EC'
let g:rias_onyx#palette.color_7  = '#F8F8F2'
let g:rias_onyx#palette.color_8  = '#6272A4'
let g:rias_onyx#palette.color_9  = '#E356A7'
let g:rias_onyx#palette.color_10 = '#42E66C'
let g:rias_onyx#palette.color_11 = '#EFA554'
let g:rias_onyx#palette.color_12 = '#9B6BDF'
let g:rias_onyx#palette.color_13 = '#E64747'
let g:rias_onyx#palette.color_14 = '#75D7EC'
let g:rias_onyx#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! rias_onyx#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'rias_onyx'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
