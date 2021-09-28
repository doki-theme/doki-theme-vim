" Palette: 

let g:sagiri#palette           = {}
let g:sagiri#palette.fg        = ['#f3edff', 255]

let g:sagiri#palette.bglighter = ['#0b443e', 237]
let g:sagiri#palette.bglight   = ['#0b443e', 237]
let g:sagiri#palette.bg        = ['#0b443e', 237]
let g:sagiri#palette.bgdark    = ['#0b443e', 237]
let g:sagiri#palette.bgdarker  = ['#0b443e', 237]

let g:sagiri#palette.comment   = ['#507F78',  66]
let g:sagiri#palette.selection = ['#052421', 234]
let g:sagiri#palette.subtle    = ['#0b463f', 237]

let g:sagiri#palette.key_color      = ['#F1A4FA', 219]
let g:sagiri#palette.class_name     = ['#FF8282', 210]
let g:sagiri#palette.parameter_color    = ['#FFB86C', 215]
let g:sagiri#palette.keyword_color      = ['#FFD448', 221]
let g:sagiri#palette.constants_color    = ['#82BAFF', 111]
let g:sagiri#palette.red       = ['#FF5555', 203]
let g:sagiri#palette.string_color    = ['#53dac7', 80]

"
" Terminal Colors
"
let g:sagiri#palette.color_0  = '#21222C'
let g:sagiri#palette.color_1  = '#FF7AB2'
let g:sagiri#palette.color_2  = '#54ea7c'
let g:sagiri#palette.color_3  = '#F1FA8C'
let g:sagiri#palette.color_4  = '#B39AFF'
let g:sagiri#palette.color_5  = '#FF91BF'
let g:sagiri#palette.color_6  = '#6DD6EE'
let g:sagiri#palette.color_7  = '#F8F8F2'
let g:sagiri#palette.color_8  = '#6272A4'
let g:sagiri#palette.color_9  = '#FF7AB2'
let g:sagiri#palette.color_10 = '#54ea7c'
let g:sagiri#palette.color_11 = '#fdaa39'
let g:sagiri#palette.color_12 = '#B39AFF'
let g:sagiri#palette.color_13 = '#FF91BF'
let g:sagiri#palette.color_14 = '#6DD6EE'
let g:sagiri#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! sagiri#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'sagiri'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
