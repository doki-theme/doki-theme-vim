" Palette: 

let g:nakano_miku#palette           = {}
let g:nakano_miku#palette.fg        = ['#f3edff', 255]

let g:nakano_miku#palette.bglighter = ['#25475e', 238]
let g:nakano_miku#palette.bglight   = ['#25475e', 238]
let g:nakano_miku#palette.bg        = ['#25475e', 238]
let g:nakano_miku#palette.bgdark    = ['#25475e', 238]
let g:nakano_miku#palette.bgdarker  = ['#25475e', 238]

let g:nakano_miku#palette.comment   = ['#6C888D',  66]
let g:nakano_miku#palette.selection = ['#498192', 66]
let g:nakano_miku#palette.subtle    = ['#25475f', 23]

let g:nakano_miku#palette.key_color      = ['#3394dd', 68]
let g:nakano_miku#palette.class_name     = ['#ba92f3', 141]
let g:nakano_miku#palette.parameter_color    = ['#FFB86C', 215]
let g:nakano_miku#palette.keyword_color      = ['#60ff62', 83]
let g:nakano_miku#palette.constants_color    = ['#da8d97', 174]
let g:nakano_miku#palette.red       = ['#FF5555', 203]
let g:nakano_miku#palette.string_color    = ['#fffeaf', 229]

"
" Terminal Colors
"
let g:nakano_miku#palette.color_0  = '#21222C'
let g:nakano_miku#palette.color_1  = '#FF7AB2'
let g:nakano_miku#palette.color_2  = '#54ea7c'
let g:nakano_miku#palette.color_3  = '#F1FA8C'
let g:nakano_miku#palette.color_4  = '#B39AFF'
let g:nakano_miku#palette.color_5  = '#FF91BF'
let g:nakano_miku#palette.color_6  = '#6DD6EE'
let g:nakano_miku#palette.color_7  = '#F8F8F2'
let g:nakano_miku#palette.color_8  = '#6272A4'
let g:nakano_miku#palette.color_9  = '#FF7AB2'
let g:nakano_miku#palette.color_10 = '#54ea7c'
let g:nakano_miku#palette.color_11 = '#fdaa39'
let g:nakano_miku#palette.color_12 = '#B39AFF'
let g:nakano_miku#palette.color_13 = '#FF91BF'
let g:nakano_miku#palette.color_14 = '#6DD6EE'
let g:nakano_miku#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! nakano_miku#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'nakano_miku'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
