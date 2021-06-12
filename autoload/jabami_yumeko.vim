" Palette: 

let g:jabami_yumeko#palette           = {}
let g:jabami_yumeko#palette.fg        = ['#dbdbdb', 253]

let g:jabami_yumeko#palette.bglighter = ['#070000', 16]
let g:jabami_yumeko#palette.bglight   = ['#070000', 16]
let g:jabami_yumeko#palette.bg        = ['#070000', 16]
let g:jabami_yumeko#palette.bgdark    = ['#070000', 16]
let g:jabami_yumeko#palette.bgdarker  = ['#070000', 16]

let g:jabami_yumeko#palette.comment   = ['#735253',  240]
let g:jabami_yumeko#palette.selection = ['#390c10', 233]
let g:jabami_yumeko#palette.subtle    = ['#1e0607', 232]

let g:jabami_yumeko#palette.key_color      = ['#42E66C', 77]
let g:jabami_yumeko#palette.class_name     = ['#7092ea', 68]
let g:jabami_yumeko#palette.parameter_color    = ['#FFB86C', 215]
let g:jabami_yumeko#palette.keyword_color      = ['#e0474b', 167]
let g:jabami_yumeko#palette.constants_color    = ['#e4ff10', 190]
let g:jabami_yumeko#palette.red       = ['#FF5555', 203]
let g:jabami_yumeko#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:jabami_yumeko#palette.color_0  = '#21222C'
let g:jabami_yumeko#palette.color_1  = '#E356A7'
let g:jabami_yumeko#palette.color_2  = '#42E66C'
let g:jabami_yumeko#palette.color_3  = '#F1FA8C'
let g:jabami_yumeko#palette.color_4  = '#9B6BDF'
let g:jabami_yumeko#palette.color_5  = '#E64747'
let g:jabami_yumeko#palette.color_6  = '#75D7EC'
let g:jabami_yumeko#palette.color_7  = '#F8F8F2'
let g:jabami_yumeko#palette.color_8  = '#6272A4'
let g:jabami_yumeko#palette.color_9  = '#E356A7'
let g:jabami_yumeko#palette.color_10 = '#42E66C'
let g:jabami_yumeko#palette.color_11 = '#EFA554'
let g:jabami_yumeko#palette.color_12 = '#9B6BDF'
let g:jabami_yumeko#palette.color_13 = '#E64747'
let g:jabami_yumeko#palette.color_14 = '#75D7EC'
let g:jabami_yumeko#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! jabami_yumeko#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'jabami_yumeko'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
