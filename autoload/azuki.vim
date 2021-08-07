" Palette: 

let g:azuki#palette           = {}
let g:azuki#palette.fg        = ['#bfbfbf', 250]

let g:azuki#palette.bglighter = ['#322623', 235]
let g:azuki#palette.bglight   = ['#322623', 235]
let g:azuki#palette.bg        = ['#322623', 235]
let g:azuki#palette.bgdark    = ['#322623', 235]
let g:azuki#palette.bgdarker  = ['#322623', 235]

let g:azuki#palette.comment   = ['#807066',  242]
let g:azuki#palette.selection = ['#684e29', 239]
let g:azuki#palette.subtle    = ['#382a26', 235]

let g:azuki#palette.key_color      = ['#96f3fd', 123]
let g:azuki#palette.class_name     = ['#c4ff8d', 192]
let g:azuki#palette.parameter_color    = ['#FFB86C', 215]
let g:azuki#palette.keyword_color      = ['#ffad46', 215]
let g:azuki#palette.constants_color    = ['#efacfc', 219]
let g:azuki#palette.red       = ['#FF5555', 203]
let g:azuki#palette.string_color    = ['#e0f6bf', 193]

"
" Terminal Colors
"
let g:azuki#palette.color_0  = '#21222C'
let g:azuki#palette.color_1  = '#E356A7'
let g:azuki#palette.color_2  = '#42E66C'
let g:azuki#palette.color_3  = '#F1FA8C'
let g:azuki#palette.color_4  = '#9B6BDF'
let g:azuki#palette.color_5  = '#E64747'
let g:azuki#palette.color_6  = '#75D7EC'
let g:azuki#palette.color_7  = '#F8F8F2'
let g:azuki#palette.color_8  = '#6272A4'
let g:azuki#palette.color_9  = '#E356A7'
let g:azuki#palette.color_10 = '#42E66C'
let g:azuki#palette.color_11 = '#EFA554'
let g:azuki#palette.color_12 = '#9B6BDF'
let g:azuki#palette.color_13 = '#E64747'
let g:azuki#palette.color_14 = '#75D7EC'
let g:azuki#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! azuki#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'azuki'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
