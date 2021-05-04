" Palette: 

let g:nakano_nino#palette           = {}
let g:nakano_nino#palette.fg        = ['#bbbbbb', 250]

let g:nakano_nino#palette.bglighter = ['#1c181e', 234]
let g:nakano_nino#palette.bglight   = ['#1c181e', 234]
let g:nakano_nino#palette.bg        = ['#1c181e', 234]
let g:nakano_nino#palette.bgdark    = ['#1c181e', 234]
let g:nakano_nino#palette.bgdarker  = ['#1c181e', 234]

let g:nakano_nino#palette.comment   = ['#5A4C63',  240]
let g:nakano_nino#palette.selection = ['#452735', 236]
let g:nakano_nino#palette.subtle    = ['#272328', 235]

let g:nakano_nino#palette.key_color      = ['#68c4ee', 81]
let g:nakano_nino#palette.class_name     = ['#5ea7ff', 75]
let g:nakano_nino#palette.parameter_color    = ['#FFB86C', 215]
let g:nakano_nino#palette.keyword_color      = ['#7ceec8', 122]
let g:nakano_nino#palette.constants_color    = ['#ff858c', 210]
let g:nakano_nino#palette.red       = ['#FF5555', 203]
let g:nakano_nino#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:nakano_nino#palette.color_0  = '#21222C'
let g:nakano_nino#palette.color_1  = '#E356A7'
let g:nakano_nino#palette.color_2  = '#42E66C'
let g:nakano_nino#palette.color_3  = '#F1FA8C'
let g:nakano_nino#palette.color_4  = '#9B6BDF'
let g:nakano_nino#palette.color_5  = '#E64747'
let g:nakano_nino#palette.color_6  = '#75D7EC'
let g:nakano_nino#palette.color_7  = '#F8F8F2'
let g:nakano_nino#palette.color_8  = '#6272A4'
let g:nakano_nino#palette.color_9  = '#E356A7'
let g:nakano_nino#palette.color_10 = '#42E66C'
let g:nakano_nino#palette.color_11 = '#EFA554'
let g:nakano_nino#palette.color_12 = '#9B6BDF'
let g:nakano_nino#palette.color_13 = '#E64747'
let g:nakano_nino#palette.color_14 = '#75D7EC'
let g:nakano_nino#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! nakano_nino#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'nakano_nino'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
