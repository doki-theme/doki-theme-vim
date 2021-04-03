" Palette: 

let g:maika#palette           = {}
let g:maika#palette.fg        = ['#c9c9c9', 251]

let g:maika#palette.bglighter = ['#24062f', 235]
let g:maika#palette.bglight   = ['#24062f', 235]
let g:maika#palette.bg        = ['#24062f', 235]
let g:maika#palette.bgdark    = ['#24062f', 235]
let g:maika#palette.bgdarker  = ['#24062f', 235]

let g:maika#palette.comment   = ['#7d62a4',  97]
let g:maika#palette.selection = ['#3d1535', 236]
let g:maika#palette.subtle    = ['#2e0639', 236]

let g:maika#palette.key_color      = ['#f6e7ba', 223]
let g:maika#palette.class_name     = ['#50cefb', 81]
let g:maika#palette.parameter_color    = ['#FFB86C', 215]
let g:maika#palette.keyword_color      = ['#e42b54', 161]
let g:maika#palette.constants_color    = ['#86dbfd', 117]
let g:maika#palette.red       = ['#FF5555', 203]
let g:maika#palette.string_color    = ['#e09cf3', 183]

"
" Terminal Colors
"
let g:maika#palette.color_0  = '#21222C'
let g:maika#palette.color_1  = '#E356A7'
let g:maika#palette.color_2  = '#42E66C'
let g:maika#palette.color_3  = '#F1FA8C'
let g:maika#palette.color_4  = '#9B6BDF'
let g:maika#palette.color_5  = '#E64747'
let g:maika#palette.color_6  = '#75D7EC'
let g:maika#palette.color_7  = '#F8F8F2'
let g:maika#palette.color_8  = '#6272A4'
let g:maika#palette.color_9  = '#E356A7'
let g:maika#palette.color_10 = '#42E66C'
let g:maika#palette.color_11 = '#EFA554'
let g:maika#palette.color_12 = '#9B6BDF'
let g:maika#palette.color_13 = '#E64747'
let g:maika#palette.color_14 = '#75D7EC'
let g:maika#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! maika#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'maika'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
