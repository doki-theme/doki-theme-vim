" Palette: 

let g:yuri_light#palette           = {}
let g:yuri_light#palette.fg        = ['#252427', 235]

let g:yuri_light#palette.bglighter = ['#f7f3ff', 231]
let g:yuri_light#palette.bglight   = ['#f7f3ff', 231]
let g:yuri_light#palette.bg        = ['#f7f3ff', 231]
let g:yuri_light#palette.bgdark    = ['#f7f3ff', 231]
let g:yuri_light#palette.bgdarker  = ['#f7f3ff', 231]

let g:yuri_light#palette.comment   = ['#6a737d',  243]
let g:yuri_light#palette.selection = ['#ada0d2', 146]
let g:yuri_light#palette.subtle    = ['#e4dcf7', 189]

let g:yuri_light#palette.key_color      = ['#7C75EF', 105]
let g:yuri_light#palette.class_name     = ['#c26a9d', 133]
let g:yuri_light#palette.parameter_color    = ['#ab74cb', 140]
let g:yuri_light#palette.keyword_color      = ['#c26a9d', 133]
let g:yuri_light#palette.constants_color    = ['#4C94D6', 68]
let g:yuri_light#palette.red       = ['#FF5555', 203]
let g:yuri_light#palette.string_color    = ['#d27f2d', 172]

"
" Terminal Colors
"
let g:yuri_light#palette.color_0  = '#21222C'
let g:yuri_light#palette.color_1  = '#E356A7'
let g:yuri_light#palette.color_2  = '#3ab55b'
let g:yuri_light#palette.color_3  = '#F1FA8C'
let g:yuri_light#palette.color_4  = '#9B6BDF'
let g:yuri_light#palette.color_5  = '#E64747'
let g:yuri_light#palette.color_6  = '#75D7EC'
let g:yuri_light#palette.color_7  = '#F8F8F2'
let g:yuri_light#palette.color_8  = '#6272A4'
let g:yuri_light#palette.color_9  = '#E356A7'
let g:yuri_light#palette.color_10 = '#3ab55b'
let g:yuri_light#palette.color_11 = '#db974d'
let g:yuri_light#palette.color_12 = '#9B6BDF'
let g:yuri_light#palette.color_13 = '#E64747'
let g:yuri_light#palette.color_14 = '#75D7EC'
let g:yuri_light#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! yuri_light#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'yuri_light'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
