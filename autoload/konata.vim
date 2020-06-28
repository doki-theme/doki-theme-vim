" Palette: 

let g:konata#palette           = {}
let g:konata#palette.fg        = ['#f3edff', 255]

let g:konata#palette.bglighter = ['#6192ee', 69]
let g:konata#palette.bglight   = ['#6192ee', 69]
let g:konata#palette.bg        = ['#6192ee', 69]
let g:konata#palette.bgdark    = ['#6192ee', 69]
let g:konata#palette.bgdarker  = ['#6192ee', 69]

let g:konata#palette.comment   = ['#6a737d',  243]
let g:konata#palette.selection = ['#59a5b2', 73]
let g:konata#palette.subtle    = ['#6c95ee', 69]

let g:konata#palette.key_color      = ['#fffdae', 229]
let g:konata#palette.class_name     = ['#DABDFB', 183]
let g:konata#palette.parameter_color    = ['#4bcf4c', 77]
let g:konata#palette.keyword_color      = ['#fad7e1', 224]
let g:konata#palette.constants_color    = ['#F3C49C', 223]
let g:konata#palette.red       = ['#FF5555', 203]
let g:konata#palette.string_color    = ['#FFB6EE', 219]

"
" Terminal Colors
"
let g:konata#palette.color_0  = '#21222C'
let g:konata#palette.color_1  = '#FFB9D6'
let g:konata#palette.color_2  = '#72E591'
let g:konata#palette.color_3  = '#F1FA8C'
let g:konata#palette.color_4  = '#DABDFB'
let g:konata#palette.color_5  = '#F79B9E'
let g:konata#palette.color_6  = '#75D7EC'
let g:konata#palette.color_7  = '#F8F8F2'
let g:konata#palette.color_8  = '#6272A4'
let g:konata#palette.color_9  = '#FFB9D6'
let g:konata#palette.color_10 = '#72E591'
let g:konata#palette.color_11 = '#ffb760'
let g:konata#palette.color_12 = '#DABDFB'
let g:konata#palette.color_13 = '#F79B9E'
let g:konata#palette.color_14 = '#75D7EC'
let g:konata#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! konata#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'konata'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
