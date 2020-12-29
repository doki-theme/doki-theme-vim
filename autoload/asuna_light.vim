" Palette: 

let g:asuna_light#palette           = {}
let g:asuna_light#palette.fg        = ['#252427', 235]

let g:asuna_light#palette.bglighter = ['#ffffff', 231]
let g:asuna_light#palette.bglight   = ['#ffffff', 231]
let g:asuna_light#palette.bg        = ['#ffffff', 231]
let g:asuna_light#palette.bgdark    = ['#ffffff', 231]
let g:asuna_light#palette.bgdarker  = ['#ffffff', 231]

let g:asuna_light#palette.comment   = ['#6a737d',  243]
let g:asuna_light#palette.selection = ['#e9b4b8', 181]
let g:asuna_light#palette.subtle    = ['#f6f6f6', 255]

let g:asuna_light#palette.key_color      = ['#0d5fa6', 25]
let g:asuna_light#palette.class_name     = ['#db974d', 173]
let g:asuna_light#palette.parameter_color    = ['#a61d0d', 124]
let g:asuna_light#palette.keyword_color      = ['#a61d0d', 124]
let g:asuna_light#palette.constants_color    = ['#4C94D6', 68]
let g:asuna_light#palette.red       = ['#FF5555', 203]
let g:asuna_light#palette.string_color    = ['#a61d0d', 124]

"
" Terminal Colors
"
let g:asuna_light#palette.color_0  = '#21222C'
let g:asuna_light#palette.color_1  = '#E356A7'
let g:asuna_light#palette.color_2  = '#3ab55b'
let g:asuna_light#palette.color_3  = '#F1FA8C'
let g:asuna_light#palette.color_4  = '#9B6BDF'
let g:asuna_light#palette.color_5  = '#E64747'
let g:asuna_light#palette.color_6  = '#75D7EC'
let g:asuna_light#palette.color_7  = '#F8F8F2'
let g:asuna_light#palette.color_8  = '#6272A4'
let g:asuna_light#palette.color_9  = '#E356A7'
let g:asuna_light#palette.color_10 = '#3ab55b'
let g:asuna_light#palette.color_11 = '#db974d'
let g:asuna_light#palette.color_12 = '#9B6BDF'
let g:asuna_light#palette.color_13 = '#E64747'
let g:asuna_light#palette.color_14 = '#75D7EC'
let g:asuna_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! asuna_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'asuna_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
