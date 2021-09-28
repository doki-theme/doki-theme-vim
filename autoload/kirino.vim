" Palette: 

let g:kirino#palette           = {}
let g:kirino#palette.fg        = ['#cbcbcb', 251]

let g:kirino#palette.bglighter = ['#152321', 234]
let g:kirino#palette.bglight   = ['#152321', 234]
let g:kirino#palette.bg        = ['#152321', 234]
let g:kirino#palette.bgdark    = ['#152321', 234]
let g:kirino#palette.bgdarker  = ['#152321', 234]

let g:kirino#palette.comment   = ['#6A8882',  66]
let g:kirino#palette.selection = ['#3d213e', 237]
let g:kirino#palette.subtle    = ['#221f28', 235]

let g:kirino#palette.key_color      = ['#eec45e', 221]
let g:kirino#palette.class_name     = ['#E77FD5', 176]
let g:kirino#palette.parameter_color    = ['#FFB86C', 215]
let g:kirino#palette.keyword_color      = ['#49e7d0', 80]
let g:kirino#palette.constants_color    = ['#EA7797', 174]
let g:kirino#palette.red       = ['#FF5555', 203]
let g:kirino#palette.string_color    = ['#F6E9CB', 224]

"
" Terminal Colors
"
let g:kirino#palette.color_0  = '#21222C'
let g:kirino#palette.color_1  = '#E356A7'
let g:kirino#palette.color_2  = '#42E66C'
let g:kirino#palette.color_3  = '#F1FA8C'
let g:kirino#palette.color_4  = '#9B6BDF'
let g:kirino#palette.color_5  = '#E64747'
let g:kirino#palette.color_6  = '#75D7EC'
let g:kirino#palette.color_7  = '#F8F8F2'
let g:kirino#palette.color_8  = '#6272A4'
let g:kirino#palette.color_9  = '#E356A7'
let g:kirino#palette.color_10 = '#42E66C'
let g:kirino#palette.color_11 = '#EFA554'
let g:kirino#palette.color_12 = '#9B6BDF'
let g:kirino#palette.color_13 = '#E64747'
let g:kirino#palette.color_14 = '#75D7EC'
let g:kirino#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! kirino#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'kirino'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
