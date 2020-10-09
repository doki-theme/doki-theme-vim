" Palette: 

let g:ishtar_light#palette           = {}
let g:ishtar_light#palette.fg        = ['#252427', 235]

let g:ishtar_light#palette.bglighter = ['#fffffc', 231]
let g:ishtar_light#palette.bglight   = ['#fffffc', 231]
let g:ishtar_light#palette.bg        = ['#fffffc', 231]
let g:ishtar_light#palette.bgdark    = ['#fffffc', 231]
let g:ishtar_light#palette.bgdarker  = ['#fffffc', 231]

let g:ishtar_light#palette.comment   = ['#6a737d',  243]
let g:ishtar_light#palette.selection = ['#fff5c7', 230]
let g:ishtar_light#palette.subtle    = ['#fffaed', 231]

let g:ishtar_light#palette.key_color      = ['#0d5fa6', 25]
let g:ishtar_light#palette.class_name     = ['#131f3b', 234]
let g:ishtar_light#palette.parameter_color    = ['#f5a821', 214]
let g:ishtar_light#palette.keyword_color      = ['#db974d', 173]
let g:ishtar_light#palette.constants_color    = ['#4C94D6', 68]
let g:ishtar_light#palette.red       = ['#FF5555', 203]
let g:ishtar_light#palette.string_color    = ['#a18649', 137]

"
" Terminal Colors
"
let g:ishtar_light#palette.color_0  = '#21222C'
let g:ishtar_light#palette.color_1  = '#E356A7'
let g:ishtar_light#palette.color_2  = '#3ab55b'
let g:ishtar_light#palette.color_3  = '#F1FA8C'
let g:ishtar_light#palette.color_4  = '#9B6BDF'
let g:ishtar_light#palette.color_5  = '#E64747'
let g:ishtar_light#palette.color_6  = '#75D7EC'
let g:ishtar_light#palette.color_7  = '#F8F8F2'
let g:ishtar_light#palette.color_8  = '#6272A4'
let g:ishtar_light#palette.color_9  = '#E356A7'
let g:ishtar_light#palette.color_10 = '#3ab55b'
let g:ishtar_light#palette.color_11 = '#db974d'
let g:ishtar_light#palette.color_12 = '#9B6BDF'
let g:ishtar_light#palette.color_13 = '#E64747'
let g:ishtar_light#palette.color_14 = '#75D7EC'
let g:ishtar_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! ishtar_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'ishtar_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
