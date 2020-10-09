if rory_mercury#should_abort('javascript')
    finish
endif

hi! link javaScriptBraces   Delimiter
hi! link javaScriptNumber   Constant
hi! link javaScriptNull     Constant
hi! link javaScriptFunction Keyword

" pangloss/vim-javascript 

hi! link jsArrowFunction           Operator
hi! link jsClassMethodType         Keyword
hi! link jsDestructuringAssignment RoryMercuryParameterItalic
hi! link jsDocParam                RoryMercuryParameterItalic
hi! link jsDocTags                 Keyword
hi! link jsDocType                 Type
hi! link jsDocTypeBrackets         RoryMercuryKeyColor
hi! link jsFuncArgOperator         Operator
hi! link jsFunction                Keyword
hi! link jsTemplateBraces          Special

"}}}

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0: