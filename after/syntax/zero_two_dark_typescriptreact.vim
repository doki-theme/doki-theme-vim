if zero_two_dark#should_abort('typescriptreact')
    finish
endif

runtime! syntax/typescript.vim

hi! link tsxAttrib           ZeroTwoDarkClassNameItalic
hi! link tsxEqual            Operator
hi! link tsxIntrinsicTagName Keyword
hi! link tsxTagName          Type
