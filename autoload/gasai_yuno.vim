" Palette: 

let g:gasai_yuno#palette           = {}
let g:gasai_yuno#palette.fg        = ['#c8c8c8', 251]

let g:gasai_yuno#palette.bglighter = ['#1a081a', 234]
let g:gasai_yuno#palette.bglight   = ['#1a081a', 234]
let g:gasai_yuno#palette.bg        = ['#1a081a', 234]
let g:gasai_yuno#palette.bgdark    = ['#1a081a', 234]
let g:gasai_yuno#palette.bgdarker  = ['#1a081a', 234]

let g:gasai_yuno#palette.comment   = ['#a06aa4',  133]
let g:gasai_yuno#palette.selection = ['#602b50', 239]
let g:gasai_yuno#palette.subtle    = ['#230920', 234]

let g:gasai_yuno#palette.key_color      = ['#39e6a6', 79]
let g:gasai_yuno#palette.class_name     = ['#EFA554', 215]
let g:gasai_yuno#palette.parameter_color    = ['#FFB86C', 215]
let g:gasai_yuno#palette.keyword_color      = ['#e0474b', 167]
let g:gasai_yuno#palette.constants_color    = ['#34a7d1', 74]
let g:gasai_yuno#palette.red       = ['#FF5555', 203]
let g:gasai_yuno#palette.string_color    = ['#F6E3CC', 224]

"
" Terminal Colors
"
let g:gasai_yuno#palette.color_0  = '#21222C'
let g:gasai_yuno#palette.color_1  = '#E356A7'
let g:gasai_yuno#palette.color_2  = '#42E66C'
let g:gasai_yuno#palette.color_3  = '#F1FA8C'
let g:gasai_yuno#palette.color_4  = '#9B6BDF'
let g:gasai_yuno#palette.color_5  = '#E64747'
let g:gasai_yuno#palette.color_6  = '#75D7EC'
let g:gasai_yuno#palette.color_7  = '#F8F8F2'
let g:gasai_yuno#palette.color_8  = '#6272A4'
let g:gasai_yuno#palette.color_9  = '#E356A7'
let g:gasai_yuno#palette.color_10 = '#42E66C'
let g:gasai_yuno#palette.color_11 = '#EFA554'
let g:gasai_yuno#palette.color_12 = '#9B6BDF'
let g:gasai_yuno#palette.color_13 = '#E64747'
let g:gasai_yuno#palette.color_14 = '#75D7EC'
let g:gasai_yuno#palette.color_15 = '#FFFFFF'

" }}}

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! gasai_yuno#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'gasai_yuno'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
