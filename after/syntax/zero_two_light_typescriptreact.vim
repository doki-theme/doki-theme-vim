if zero_two_light#should_abort('typescriptreact')
    finish
endif

runtime! syntax/typescript.vim

hi! link tsxAttrib           ZeroTwoLightClassNameItalic
hi! link tsxEqual            Operator
hi! link tsxIntrinsicTagName Keyword
hi! link tsxTagName          Type
