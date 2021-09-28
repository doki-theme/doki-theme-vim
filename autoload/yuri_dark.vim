" Palette: 

let g:yuri_dark#palette           = {}
let g:yuri_dark#palette.fg        = ['#DADADA', 253]

let g:yuri_dark#palette.bglighter = ['#493162', 238]
let g:yuri_dark#palette.bglight   = ['#493162', 238]
let g:yuri_dark#palette.bg        = ['#493162', 238]
let g:yuri_dark#palette.bgdark    = ['#493162', 238]
let g:yuri_dark#palette.bgdarker  = ['#493162', 238]

let g:yuri_dark#palette.comment   = ['#8B79B4',  103]
let g:yuri_dark#palette.selection = ['#4c2a70', 239]
let g:yuri_dark#palette.subtle    = ['#473466', 238]

let g:yuri_dark#palette.key_color      = ['#7C75EF', 105]
let g:yuri_dark#palette.class_name     = ['#FF9CD6', 218]
let g:yuri_dark#palette.parameter_color    = ['#FFB86C', 215]
let g:yuri_dark#palette.keyword_color      = ['#bca3aa', 248]
let g:yuri_dark#palette.constants_color    = ['#86dbfd', 117]
let g:yuri_dark#palette.red       = ['#FF5555', 203]
let g:yuri_dark#palette.string_color    = ['#f1fa8c', 228]

"
" Terminal Colors
"
let g:yuri_dark#palette.color_0  = '#21222C'
let g:yuri_dark#palette.color_1  = '#E356A7'
let g:yuri_dark#palette.color_2  = '#42E66C'
let g:yuri_dark#palette.color_3  = '#F1FA8C'
let g:yuri_dark#palette.color_4  = '#9B6BDF'
let g:yuri_dark#palette.color_5  = '#E64747'
let g:yuri_dark#palette.color_6  = '#75D7EC'
let g:yuri_dark#palette.color_7  = '#F8F8F2'
let g:yuri_dark#palette.color_8  = '#6272A4'
let g:yuri_dark#palette.color_9  = '#E356A7'
let g:yuri_dark#palette.color_10 = '#42E66C'
let g:yuri_dark#palette.color_11 = '#EFA554'
let g:yuri_dark#palette.color_12 = '#9B6BDF'
let g:yuri_dark#palette.color_13 = '#E64747'
let g:yuri_dark#palette.color_14 = '#75D7EC'
let g:yuri_dark#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! yuri_dark#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'yuri_dark'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
