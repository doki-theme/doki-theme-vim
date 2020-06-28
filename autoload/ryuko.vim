" Palette: 

let g:ryuko#palette           = {}
let g:ryuko#palette.fg        = ['#bbbbbb', 250]

let g:ryuko#palette.bglighter = ['#2f363c', 237]
let g:ryuko#palette.bglight   = ['#2f363c', 237]
let g:ryuko#palette.bg        = ['#2f363c', 237]
let g:ryuko#palette.bgdark    = ['#2f363c', 237]
let g:ryuko#palette.bgdarker  = ['#2f363c', 237]

let g:ryuko#palette.comment   = ['#6272A4',  61]
let g:ryuko#palette.selection = ['#563036', 237]
let g:ryuko#palette.subtle    = ['#2a3037', 236]

let g:ryuko#palette.key_color      = ['#C1B5C3', 250]
let g:ryuko#palette.class_name     = ['#6893f3', 69]
let g:ryuko#palette.parameter_color    = ['#FFB86C', 215]
let g:ryuko#palette.keyword_color      = ['#e0474b', 167]
let g:ryuko#palette.constants_color    = ['#BD93F9', 141]
let g:ryuko#palette.red       = ['#FF5555', 203]
let g:ryuko#palette.string_color    = ['#efa554', 215]

"
" Terminal Colors
"
let g:ryuko#palette.color_0  = '#21222C'
let g:ryuko#palette.color_1  = '#FF5555'
let g:ryuko#palette.color_2  = '#50FA7B'
let g:ryuko#palette.color_3  = '#F1FA8C'
let g:ryuko#palette.color_4  = '#BD93F9'
let g:ryuko#palette.color_5  = '#FF79C6'
let g:ryuko#palette.color_6  = '#8BE9FD'
let g:ryuko#palette.color_7  = '#F8F8F2'
let g:ryuko#palette.color_8  = '#6272A4'
let g:ryuko#palette.color_9  = '#FF6E6E'
let g:ryuko#palette.color_10 = '#69FF94'
let g:ryuko#palette.color_11 = '#FFFFA5'
let g:ryuko#palette.color_12 = '#D6ACFF'
let g:ryuko#palette.color_13 = '#FF92DF'
let g:ryuko#palette.color_14 = '#A4FFFF'
let g:ryuko#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! ryuko#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'ryuko'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
