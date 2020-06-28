" Palette: 

let g:hatsune_miku#palette           = {}
let g:hatsune_miku#palette.fg        = ['#bbbbbb', 250]

let g:hatsune_miku#palette.bglighter = ['#293030', 236]
let g:hatsune_miku#palette.bglight   = ['#293030', 236]
let g:hatsune_miku#palette.bg        = ['#293030', 236]
let g:hatsune_miku#palette.bgdark    = ['#293030', 236]
let g:hatsune_miku#palette.bgdarker  = ['#293030', 236]

let g:hatsune_miku#palette.comment   = ['#6272A4',  61]
let g:hatsune_miku#palette.selection = ['#4c7a76', 243]
let g:hatsune_miku#palette.subtle    = ['#313938', 237]

let g:hatsune_miku#palette.key_color      = ['#68f3e7', 86]
let g:hatsune_miku#palette.class_name     = ['#8defe4', 122]
let g:hatsune_miku#palette.parameter_color    = ['#FFB86C', 215]
let g:hatsune_miku#palette.keyword_color      = ['#988F9A', 246]
let g:hatsune_miku#palette.constants_color    = ['#BD93F9', 141]
let g:hatsune_miku#palette.red       = ['#FF5555', 203]
let g:hatsune_miku#palette.string_color    = ['#f4fa8c', 228]

"
" Terminal Colors
"
let g:hatsune_miku#palette.color_0  = '#21222C'
let g:hatsune_miku#palette.color_1  = '#FF5555'
let g:hatsune_miku#palette.color_2  = '#50FA7B'
let g:hatsune_miku#palette.color_3  = '#F1FA8C'
let g:hatsune_miku#palette.color_4  = '#BD93F9'
let g:hatsune_miku#palette.color_5  = '#FF79C6'
let g:hatsune_miku#palette.color_6  = '#8BE9FD'
let g:hatsune_miku#palette.color_7  = '#F8F8F2'
let g:hatsune_miku#palette.color_8  = '#6272A4'
let g:hatsune_miku#palette.color_9  = '#FF6E6E'
let g:hatsune_miku#palette.color_10 = '#69FF94'
let g:hatsune_miku#palette.color_11 = '#FFFFA5'
let g:hatsune_miku#palette.color_12 = '#D6ACFF'
let g:hatsune_miku#palette.color_13 = '#FF92DF'
let g:hatsune_miku#palette.color_14 = '#A4FFFF'
let g:hatsune_miku#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! hatsune_miku#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'hatsune_miku'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
