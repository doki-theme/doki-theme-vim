" Palette: 

let g:monika_light#palette           = {}
let g:monika_light#palette.fg        = ['#252427', 235]

let g:monika_light#palette.bglighter = ['#f3fff4', 231]
let g:monika_light#palette.bglight   = ['#f3fff4', 231]
let g:monika_light#palette.bg        = ['#f3fff4', 231]
let g:monika_light#palette.bgdark    = ['#f3fff4', 231]
let g:monika_light#palette.bgdarker  = ['#f3fff4', 231]

let g:monika_light#palette.comment   = ['#6a737d',  243]
let g:monika_light#palette.selection = ['#a9ecac', 157]
let g:monika_light#palette.subtle    = ['#dcf7e0', 194]

let g:monika_light#palette.key_color      = ['#8a777d', 244]
let g:monika_light#palette.class_name     = ['#7AA42E', 106]
let g:monika_light#palette.parameter_color    = ['#388E3C', 65]
let g:monika_light#palette.keyword_color      = ['#3eae5d', 71]
let g:monika_light#palette.constants_color    = ['#4C94D6', 68]
let g:monika_light#palette.red       = ['#FF5555', 203]
let g:monika_light#palette.string_color    = ['#EC9130', 209]

"
" Terminal Colors
"
let g:monika_light#palette.color_0  = '#21222C'
let g:monika_light#palette.color_1  = '#E356A7'
let g:monika_light#palette.color_2  = '#3ab55b'
let g:monika_light#palette.color_3  = '#F1FA8C'
let g:monika_light#palette.color_4  = '#9B6BDF'
let g:monika_light#palette.color_5  = '#E64747'
let g:monika_light#palette.color_6  = '#75D7EC'
let g:monika_light#palette.color_7  = '#F8F8F2'
let g:monika_light#palette.color_8  = '#6272A4'
let g:monika_light#palette.color_9  = '#E356A7'
let g:monika_light#palette.color_10 = '#3ab55b'
let g:monika_light#palette.color_11 = '#db974d'
let g:monika_light#palette.color_12 = '#9B6BDF'
let g:monika_light#palette.color_13 = '#E64747'
let g:monika_light#palette.color_14 = '#75D7EC'
let g:monika_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! monika_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'monika_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
