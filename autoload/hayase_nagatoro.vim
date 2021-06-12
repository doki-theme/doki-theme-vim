" Palette: 

let g:hayase_nagatoro#palette           = {}
let g:hayase_nagatoro#palette.fg        = ['#bbbbbb', 250]

let g:hayase_nagatoro#palette.bglighter = ['#1d1d1d', 234]
let g:hayase_nagatoro#palette.bglight   = ['#1d1d1d', 234]
let g:hayase_nagatoro#palette.bg        = ['#1d1d1d', 234]
let g:hayase_nagatoro#palette.bgdark    = ['#1d1d1d', 234]
let g:hayase_nagatoro#palette.bgdarker  = ['#1d1d1d', 234]

let g:hayase_nagatoro#palette.comment   = ['#5b574a',  240]
let g:hayase_nagatoro#palette.selection = ['#5d3e2f', 237]
let g:hayase_nagatoro#palette.subtle    = ['#1f1f1f', 234]

let g:hayase_nagatoro#palette.key_color      = ['#5cd7d7', 80]
let g:hayase_nagatoro#palette.class_name     = ['#D233A2', 169]
let g:hayase_nagatoro#palette.parameter_color    = ['#FFB86C', 215]
let g:hayase_nagatoro#palette.keyword_color      = ['#6d7fd4', 68]
let g:hayase_nagatoro#palette.constants_color    = ['#d776ae', 175]
let g:hayase_nagatoro#palette.red       = ['#FF5555', 203]
let g:hayase_nagatoro#palette.string_color    = ['#95acbd', 109]

"
" Terminal Colors
"
let g:hayase_nagatoro#palette.color_0  = '#21222C'
let g:hayase_nagatoro#palette.color_1  = '#E356A7'
let g:hayase_nagatoro#palette.color_2  = '#42E66C'
let g:hayase_nagatoro#palette.color_3  = '#F1FA8C'
let g:hayase_nagatoro#palette.color_4  = '#9B6BDF'
let g:hayase_nagatoro#palette.color_5  = '#E64747'
let g:hayase_nagatoro#palette.color_6  = '#75D7EC'
let g:hayase_nagatoro#palette.color_7  = '#F8F8F2'
let g:hayase_nagatoro#palette.color_8  = '#6272A4'
let g:hayase_nagatoro#palette.color_9  = '#E356A7'
let g:hayase_nagatoro#palette.color_10 = '#42E66C'
let g:hayase_nagatoro#palette.color_11 = '#EFA554'
let g:hayase_nagatoro#palette.color_12 = '#9B6BDF'
let g:hayase_nagatoro#palette.color_13 = '#E64747'
let g:hayase_nagatoro#palette.color_14 = '#75D7EC'
let g:hayase_nagatoro#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! hayase_nagatoro#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'hayase_nagatoro'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
