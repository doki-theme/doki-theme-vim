" Palette: 

let g:mai_light#palette           = {}
let g:mai_light#palette.fg        = ['#252427', 235]

let g:mai_light#palette.bglighter = ['#fbf3f2', 255]
let g:mai_light#palette.bglight   = ['#fbf3f2', 255]
let g:mai_light#palette.bg        = ['#fbf3f2', 255]
let g:mai_light#palette.bgdark    = ['#fbf3f2', 255]
let g:mai_light#palette.bgdarker  = ['#fbf3f2', 255]

let g:mai_light#palette.comment   = ['#64757d',  243]
let g:mai_light#palette.selection = ['#a0a5d2', 146]
let g:mai_light#palette.subtle    = ['#f1ecf2', 255]

let g:mai_light#palette.key_color      = ['#C869A3', 169]
let g:mai_light#palette.class_name     = ['#4f5287', 60]
let g:mai_light#palette.parameter_color    = ['#4f5287', 60]
let g:mai_light#palette.keyword_color      = ['#7C75EF', 105]
let g:mai_light#palette.constants_color    = ['#4C94D6', 68]
let g:mai_light#palette.red       = ['#FF5555', 203]
let g:mai_light#palette.string_color    = ['#d27f2d', 172]

"
" Terminal Colors
"
let g:mai_light#palette.color_0  = '#21222C'
let g:mai_light#palette.color_1  = '#E356A7'
let g:mai_light#palette.color_2  = '#3ab55b'
let g:mai_light#palette.color_3  = '#F1FA8C'
let g:mai_light#palette.color_4  = '#9B6BDF'
let g:mai_light#palette.color_5  = '#E64747'
let g:mai_light#palette.color_6  = '#75D7EC'
let g:mai_light#palette.color_7  = '#F8F8F2'
let g:mai_light#palette.color_8  = '#6272A4'
let g:mai_light#palette.color_9  = '#E356A7'
let g:mai_light#palette.color_10 = '#3ab55b'
let g:mai_light#palette.color_11 = '#db974d'
let g:mai_light#palette.color_12 = '#9B6BDF'
let g:mai_light#palette.color_13 = '#E64747'
let g:mai_light#palette.color_14 = '#75D7EC'
let g:mai_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! mai_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'mai_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
