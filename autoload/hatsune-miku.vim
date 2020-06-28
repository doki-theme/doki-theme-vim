" Palette: 

let g:hatsune-miku#palette           = {}
let g:hatsune-miku#palette.fg        = ['#bbbbbb', 250]

let g:hatsune-miku#palette.bglighter = ['#293030', 236]
let g:hatsune-miku#palette.bglight   = ['#293030', 236]
let g:hatsune-miku#palette.bg        = ['#293030', 236]
let g:hatsune-miku#palette.bgdark    = ['#293030', 236]
let g:hatsune-miku#palette.bgdarker  = ['#293030', 236]

let g:hatsune-miku#palette.comment   = ['#6272A4',  61]
let g:hatsune-miku#palette.selection = ['#44475A', 239]
let g:hatsune-miku#palette.subtle    = ['#424450', 238]

let g:hatsune-miku#palette.cyan      = ['#8BE9FD', 117]
let g:hatsune-miku#palette.green     = ['#50FA7B',  84]
let g:hatsune-miku#palette.orange    = ['#FFB86C', 215]
let g:hatsune-miku#palette.pink      = ['#FF79C6', 212]
let g:hatsune-miku#palette.purple    = ['#BD93F9', 141]
let g:hatsune-miku#palette.red       = ['#FF5555', 203]
let g:hatsune-miku#palette.yellow    = ['#F1FA8C', 228]

"
" Terminal Colors
"
let g:hatsune-miku#palette.color_0  = '#21222C'
let g:hatsune-miku#palette.color_1  = '#FF5555'
let g:hatsune-miku#palette.color_2  = '#50FA7B'
let g:hatsune-miku#palette.color_3  = '#F1FA8C'
let g:hatsune-miku#palette.color_4  = '#BD93F9'
let g:hatsune-miku#palette.color_5  = '#FF79C6'
let g:hatsune-miku#palette.color_6  = '#8BE9FD'
let g:hatsune-miku#palette.color_7  = '#F8F8F2'
let g:hatsune-miku#palette.color_8  = '#6272A4'
let g:hatsune-miku#palette.color_9  = '#FF6E6E'
let g:hatsune-miku#palette.color_10 = '#69FF94'
let g:hatsune-miku#palette.color_11 = '#FFFFA5'
let g:hatsune-miku#palette.color_12 = '#D6ACFF'
let g:hatsune-miku#palette.color_13 = '#FF92DF'
let g:hatsune-miku#palette.color_14 = '#A4FFFF'
let g:hatsune-miku#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! hatsune-miku#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'hatsune-miku'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
