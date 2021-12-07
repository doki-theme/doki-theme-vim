" Palette: 

let g:christmas_chocola#palette           = {}
let g:christmas_chocola#palette.fg        = ['#d3d3d3', 252]

let g:christmas_chocola#palette.bglighter = ['#3c161f', 234]
let g:christmas_chocola#palette.bglight   = ['#3c161f', 234]
let g:christmas_chocola#palette.bg        = ['#3c161f', 234]
let g:christmas_chocola#palette.bgdark    = ['#3c161f', 234]
let g:christmas_chocola#palette.bgdarker  = ['#3c161f', 234]

let g:christmas_chocola#palette.comment   = ['#72A174',  243]
let g:christmas_chocola#palette.selection = ['#1f422d', 236]
let g:christmas_chocola#palette.subtle    = ['#1e3828', 235]

let g:christmas_chocola#palette.key_color      = ['#48eae4', 80]
let g:christmas_chocola#palette.class_name     = ['#f689f6', 213]
let g:christmas_chocola#palette.parameter_color    = ['#FFB86C', 215]
let g:christmas_chocola#palette.keyword_color      = ['#EF354B', 203]
let g:christmas_chocola#palette.constants_color    = ['#96b7fb', 111]
let g:christmas_chocola#palette.red       = ['#FF5555', 203]
let g:christmas_chocola#palette.string_color    = ['#FDBAAE', 217]

"
" Terminal Colors
"
let g:christmas_chocola#palette.color_0  = '#21222C'
let g:christmas_chocola#palette.color_1  = '#E356A7'
let g:christmas_chocola#palette.color_2  = '#42E66C'
let g:christmas_chocola#palette.color_3  = '#F1FA8C'
let g:christmas_chocola#palette.color_4  = '#9B6BDF'
let g:christmas_chocola#palette.color_5  = '#E64747'
let g:christmas_chocola#palette.color_6  = '#75D7EC'
let g:christmas_chocola#palette.color_7  = '#F8F8F2'
let g:christmas_chocola#palette.color_8  = '#6272A4'
let g:christmas_chocola#palette.color_9  = '#E356A7'
let g:christmas_chocola#palette.color_10 = '#42E66C'
let g:christmas_chocola#palette.color_11 = '#EFA554'
let g:christmas_chocola#palette.color_12 = '#9B6BDF'
let g:christmas_chocola#palette.color_13 = '#E64747'
let g:christmas_chocola#palette.color_14 = '#75D7EC'
let g:christmas_chocola#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! christmas_chocola#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'christmas_chocola'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
