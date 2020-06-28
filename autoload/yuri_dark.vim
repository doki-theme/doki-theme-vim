" Palette: 

let g:yuri_dark#palette           = {}
let g:yuri_dark#palette.fg        = ['#DADADA', 253]

let g:yuri_dark#palette.bglighter = ['#493162', 238]
let g:yuri_dark#palette.bglight   = ['#493162', 238]
let g:yuri_dark#palette.bg        = ['#493162', 238]
let g:yuri_dark#palette.bgdark    = ['#493162', 238]
let g:yuri_dark#palette.bgdarker  = ['#493162', 238]

let g:yuri_dark#palette.comment   = ['#6272A4',  61]
let g:yuri_dark#palette.selection = ['#4c2a70', 239]
let g:yuri_dark#palette.subtle    = ['#424450', 238]

let g:yuri_dark#palette.cyan      = ['#8BE9FD', 117]
let g:yuri_dark#palette.green     = ['#50FA7B',  84]
let g:yuri_dark#palette.orange    = ['#FFB86C', 215]
let g:yuri_dark#palette.pink      = ['#FF79C6', 212]
let g:yuri_dark#palette.purple    = ['#BD93F9', 141]
let g:yuri_dark#palette.red       = ['#FF5555', 203]
let g:yuri_dark#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:yuri_dark#palette.color_0  = '#21222C'
let g:yuri_dark#palette.color_1  = '#FF5555'
let g:yuri_dark#palette.color_2  = '#50FA7B'
let g:yuri_dark#palette.color_3  = '#F1FA8C'
let g:yuri_dark#palette.color_4  = '#BD93F9'
let g:yuri_dark#palette.color_5  = '#FF79C6'
let g:yuri_dark#palette.color_6  = '#8BE9FD'
let g:yuri_dark#palette.color_7  = '#F8F8F2'
let g:yuri_dark#palette.color_8  = '#6272A4'
let g:yuri_dark#palette.color_9  = '#FF6E6E'
let g:yuri_dark#palette.color_10 = '#69FF94'
let g:yuri_dark#palette.color_11 = '#FFFFA5'
let g:yuri_dark#palette.color_12 = '#D6ACFF'
let g:yuri_dark#palette.color_13 = '#FF92DF'
let g:yuri_dark#palette.color_14 = '#A4FFFF'
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
