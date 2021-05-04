if nakano_nino#should_abort('typescriptreact')
    finish
endif

runtime! syntax/typescript.vim

hi! link tsxAttrib           NakanoNinoClassNameItalic
hi! link tsxEqual            Operator
hi! link tsxIntrinsicTagName Keyword
hi! link tsxTagName          Type
