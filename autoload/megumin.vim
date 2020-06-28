" Palette: 

let g:megumin#palette           = {}
let g:megumin#palette.fg        = ['#bbbbbb', 253]

let g:megumin#palette.bglighter = ['#271c21', 238]
let g:megumin#palette.bglight   = ['#271c21', 237]
let g:megumin#palette.bg        = ['#271c21', 236]
let g:megumin#palette.bgdark    = ['#271c21', 235]
let g:megumin#palette.bgdarker  = ['#271c21', 234]

let g:megumin#palette.comment   = ['#6272A4',  61]
let g:megumin#palette.selection = ['#44475A', 239]
let g:megumin#palette.subtle    = ['#424450', 238]

let g:megumin#palette.cyan      = ['#8BE9FD', 117]
let g:megumin#palette.green     = ['#50FA7B',  84]
let g:megumin#palette.orange    = ['#FFB86C', 215]
let g:megumin#palette.pink      = ['#FF79C6', 212]
let g:megumin#palette.purple    = ['#BD93F9', 141]
let g:megumin#palette.red       = ['#FF5555', 203]
let g:megumin#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:megumin#palette.color_0  = '#21222C'
let g:megumin#palette.color_1  = '#FF5555'
let g:megumin#palette.color_2  = '#50FA7B'
let g:megumin#palette.color_3  = '#F1FA8C'
let g:megumin#palette.color_4  = '#BD93F9'
let g:megumin#palette.color_5  = '#FF79C6'
let g:megumin#palette.color_6  = '#8BE9FD'
let g:megumin#palette.color_7  = '#F8F8F2'
let g:megumin#palette.color_8  = '#6272A4'
let g:megumin#palette.color_9  = '#FF6E6E'
let g:megumin#palette.color_10 = '#69FF94'
let g:megumin#palette.color_11 = '#FFFFA5'
let g:megumin#palette.color_12 = '#D6ACFF'
let g:megumin#palette.color_13 = '#FF92DF'
let g:megumin#palette.color_14 = '#A4FFFF'
let g:megumin#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! megumin#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'megumin'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
