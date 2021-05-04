" Palette: 

let g:miia#palette           = {}
let g:miia#palette.fg        = ['#efefef', 255]

let g:miia#palette.bglighter = ['#36101c', 234]
let g:miia#palette.bglight   = ['#36101c', 234]
let g:miia#palette.bg        = ['#36101c', 234]
let g:miia#palette.bgdark    = ['#36101c', 234]
let g:miia#palette.bgdarker  = ['#36101c', 234]

let g:miia#palette.comment   = ['#a47272',  131]
let g:miia#palette.selection = ['#5b3225', 236]
let g:miia#palette.subtle    = ['#3a1020', 234]

let g:miia#palette.key_color      = ['#c05388', 132]
let g:miia#palette.class_name     = ['#FFB86C', 215]
let g:miia#palette.parameter_color    = ['#FFB86C', 215]
let g:miia#palette.keyword_color      = ['#39e6a6', 79]
let g:miia#palette.constants_color    = ['#34a7d1', 74]
let g:miia#palette.red       = ['#FF5555', 203]
let g:miia#palette.string_color    = ['#e2d9bd', 187]

"
" Terminal Colors
"
let g:miia#palette.color_0  = '#21222C'
let g:miia#palette.color_1  = '#E356A7'
let g:miia#palette.color_2  = '#42E66C'
let g:miia#palette.color_3  = '#F1FA8C'
let g:miia#palette.color_4  = '#9B6BDF'
let g:miia#palette.color_5  = '#E64747'
let g:miia#palette.color_6  = '#75D7EC'
let g:miia#palette.color_7  = '#F8F8F2'
let g:miia#palette.color_8  = '#6272A4'
let g:miia#palette.color_9  = '#E356A7'
let g:miia#palette.color_10 = '#42E66C'
let g:miia#palette.color_11 = '#EFA554'
let g:miia#palette.color_12 = '#9B6BDF'
let g:miia#palette.color_13 = '#E64747'
let g:miia#palette.color_14 = '#75D7EC'
let g:miia#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! miia#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'miia'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
