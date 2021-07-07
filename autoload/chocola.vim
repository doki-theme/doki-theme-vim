" Palette: 

let g:chocola#palette           = {}
let g:chocola#palette.fg        = ['#d3d3d3', 252]

let g:chocola#palette.bglighter = ['#30292c', 236]
let g:chocola#palette.bglight   = ['#30292c', 236]
let g:chocola#palette.bg        = ['#30292c', 236]
let g:chocola#palette.bgdark    = ['#30292c', 236]
let g:chocola#palette.bgdarker  = ['#30292c', 236]

let g:chocola#palette.comment   = ['#806872',  243]
let g:chocola#palette.selection = ['#6a3849', 238]
let g:chocola#palette.subtle    = ['#352f31', 236]

let g:chocola#palette.key_color      = ['#48eae4', 80]
let g:chocola#palette.class_name     = ['#f8835f', 209]
let g:chocola#palette.parameter_color    = ['#FFB86C', 215]
let g:chocola#palette.keyword_color      = ['#FF357C', 204]
let g:chocola#palette.constants_color    = ['#96b7fb', 111]
let g:chocola#palette.red       = ['#FF5555', 203]
let g:chocola#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:chocola#palette.color_0  = '#21222C'
let g:chocola#palette.color_1  = '#E356A7'
let g:chocola#palette.color_2  = '#42E66C'
let g:chocola#palette.color_3  = '#F1FA8C'
let g:chocola#palette.color_4  = '#9B6BDF'
let g:chocola#palette.color_5  = '#E64747'
let g:chocola#palette.color_6  = '#75D7EC'
let g:chocola#palette.color_7  = '#F8F8F2'
let g:chocola#palette.color_8  = '#6272A4'
let g:chocola#palette.color_9  = '#E356A7'
let g:chocola#palette.color_10 = '#42E66C'
let g:chocola#palette.color_11 = '#EFA554'
let g:chocola#palette.color_12 = '#9B6BDF'
let g:chocola#palette.color_13 = '#E64747'
let g:chocola#palette.color_14 = '#75D7EC'
let g:chocola#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! chocola#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'chocola'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
