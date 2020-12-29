if yukinoshita_yukino#should_abort('ruby')
    finish
endif

if ! exists('g:ruby_operators')
    let g:ruby_operators=1
endif

hi! link rubyBlockArgument          YukinoshitaYukinoParameterItalic
hi! link rubyBlockParameter         YukinoshitaYukinoParameterItalic
hi! link rubyCurlyBlock             YukinoshitaYukinoKeyword
hi! link rubyGlobalVariable         YukinoshitaYukinoConstants
hi! link rubyInstanceVariable       YukinoshitaYukinoConstantsItalic
hi! link rubyInterpolationDelimiter YukinoshitaYukinoKeyword
hi! link rubyRegexpDelimiter        YukinoshitaYukinoRed
hi! link rubyStringDelimiter        YukinoshitaYukinoStringColor
