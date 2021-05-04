if gray#should_abort('json')
    finish
endif

hi! link jsonKeyword      GrayKeyColor
hi! link jsonKeywordMatch GrayKeyword
