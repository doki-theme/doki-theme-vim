" Palette: 

let g:zero_two_light#palette           = {}
let g:zero_two_light#palette.fg        = ['#252427', 235]

let g:zero_two_light#palette.bglighter = ['#fcfcfc', 231]
let g:zero_two_light#palette.bglight   = ['#fcfcfc', 231]
let g:zero_two_light#palette.bg        = ['#fcfcfc', 231]
let g:zero_two_light#palette.bgdark    = ['#fcfcfc', 231]
let g:zero_two_light#palette.bgdarker  = ['#fcfcfc', 231]

let g:zero_two_light#palette.comment   = ['#6a737d',  243]
let g:zero_two_light#palette.selection = ['#e9b4b8', 181]
let g:zero_two_light#palette.subtle    = ['#f6f6f6', 255]

let g:zero_two_light#palette.key_color      = ['#A62210', 124]
let g:zero_two_light#palette.class_name     = ['#117aa6', 31]
let g:zero_two_light#palette.parameter_color    = ['#A62210', 124]
let g:zero_two_light#palette.keyword_color      = ['#0da661', 35]
let g:zero_two_light#palette.constants_color    = ['#0d5fa6', 25]
let g:zero_two_light#palette.red       = ['#FF5555', 203]
let g:zero_two_light#palette.string_color    = ['#131313', 233]

"
" Terminal Colors
"
let g:zero_two_light#palette.color_0  = '#21222C'
let g:zero_two_light#palette.color_1  = '#E356A7'
let g:zero_two_light#palette.color_2  = '#3ab55b'
let g:zero_two_light#palette.color_3  = '#F1FA8C'
let g:zero_two_light#palette.color_4  = '#9B6BDF'
let g:zero_two_light#palette.color_5  = '#E64747'
let g:zero_two_light#palette.color_6  = '#75D7EC'
let g:zero_two_light#palette.color_7  = '#F8F8F2'
let g:zero_two_light#palette.color_8  = '#6272A4'
let g:zero_two_light#palette.color_9  = '#E356A7'
let g:zero_two_light#palette.color_10 = '#3ab55b'
let g:zero_two_light#palette.color_11 = '#db974d'
let g:zero_two_light#palette.color_12 = '#9B6BDF'
let g:zero_two_light#palette.color_13 = '#E64747'
let g:zero_two_light#palette.color_14 = '#75D7EC'
let g:zero_two_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! zero_two_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'zero_two_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
