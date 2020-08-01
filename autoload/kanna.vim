" Palette: 

let g:kanna#palette           = {}
let g:kanna#palette.fg        = ['#d0d0d0', 252]

let g:kanna#palette.bglighter = ['#1b1529', 234]
let g:kanna#palette.bglight   = ['#1b1529', 234]
let g:kanna#palette.bg        = ['#1b1529', 234]
let g:kanna#palette.bgdark    = ['#1b1529', 234]
let g:kanna#palette.bgdarker  = ['#1b1529', 234]

let g:kanna#palette.comment   = ['#6272a4',  61]
let g:kanna#palette.selection = ['#492744', 238]
let g:kanna#palette.subtle    = ['#231a31', 235]

let g:kanna#palette.key_color      = ['#FF357C', 204]
let g:kanna#palette.class_name     = ['#6AADFF', 75]
let g:kanna#palette.parameter_color    = ['#FFB86C', 215]
let g:kanna#palette.keyword_color      = ['#d285fd', 177]
let g:kanna#palette.constants_color    = ['#BD93F9', 141]
let g:kanna#palette.red       = ['#FF5555', 203]
let g:kanna#palette.string_color    = ['#FAF7BA', 229]

"
" Terminal Colors
"
let g:kanna#palette.color_0  = '#21222C'
let g:kanna#palette.color_1  = '#E356A7'
let g:kanna#palette.color_2  = '#42E66C'
let g:kanna#palette.color_3  = '#F1FA8C'
let g:kanna#palette.color_4  = '#9B6BDF'
let g:kanna#palette.color_5  = '#E64747'
let g:kanna#palette.color_6  = '#75D7EC'
let g:kanna#palette.color_7  = '#F8F8F2'
let g:kanna#palette.color_8  = '#6272A4'
let g:kanna#palette.color_9  = '#E356A7'
let g:kanna#palette.color_10 = '#42E66C'
let g:kanna#palette.color_11 = '#EFA554'
let g:kanna#palette.color_12 = '#9B6BDF'
let g:kanna#palette.color_13 = '#E64747'
let g:kanna#palette.color_14 = '#75D7EC'
let g:kanna#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! kanna#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'kanna'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
