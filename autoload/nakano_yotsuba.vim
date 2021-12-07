" Palette: 

let g:nakano_yotsuba#palette           = {}
let g:nakano_yotsuba#palette.fg        = ['#bbbbbb', 250]

let g:nakano_yotsuba#palette.bglighter = ['#140e19', 233]
let g:nakano_yotsuba#palette.bglight   = ['#140e19', 233]
let g:nakano_yotsuba#palette.bg        = ['#140e19', 233]
let g:nakano_yotsuba#palette.bgdark    = ['#140e19', 233]
let g:nakano_yotsuba#palette.bgdarker  = ['#140e19', 233]

let g:nakano_yotsuba#palette.comment   = ['#6C524E',  239]
let g:nakano_yotsuba#palette.selection = ['#622316', 52]
let g:nakano_yotsuba#palette.subtle    = ['#2d0d0d', 233]

let g:nakano_yotsuba#palette.key_color      = ['#39e6a6', 79]
let g:nakano_yotsuba#palette.class_name     = ['#ffba2f', 214]
let g:nakano_yotsuba#palette.parameter_color    = ['#FFB86C', 215]
let g:nakano_yotsuba#palette.keyword_color      = ['#ff858c', 210]
let g:nakano_yotsuba#palette.constants_color    = ['#9DACF6', 147]
let g:nakano_yotsuba#palette.red       = ['#FF5555', 203]
let g:nakano_yotsuba#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:nakano_yotsuba#palette.color_0  = '#21222C'
let g:nakano_yotsuba#palette.color_1  = '#E356A7'
let g:nakano_yotsuba#palette.color_2  = '#42E66C'
let g:nakano_yotsuba#palette.color_3  = '#F1FA8C'
let g:nakano_yotsuba#palette.color_4  = '#9B6BDF'
let g:nakano_yotsuba#palette.color_5  = '#E64747'
let g:nakano_yotsuba#palette.color_6  = '#75D7EC'
let g:nakano_yotsuba#palette.color_7  = '#F8F8F2'
let g:nakano_yotsuba#palette.color_8  = '#6272A4'
let g:nakano_yotsuba#palette.color_9  = '#E356A7'
let g:nakano_yotsuba#palette.color_10 = '#42E66C'
let g:nakano_yotsuba#palette.color_11 = '#EFA554'
let g:nakano_yotsuba#palette.color_12 = '#9B6BDF'
let g:nakano_yotsuba#palette.color_13 = '#E64747'
let g:nakano_yotsuba#palette.color_14 = '#75D7EC'
let g:nakano_yotsuba#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! nakano_yotsuba#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'nakano_yotsuba'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
