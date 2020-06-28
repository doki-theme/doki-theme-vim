if rias#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RiasParameterBold
  hi! link htmlBoldItalic RiasParameterBoldItalic
  hi! link htmlH1         RiasConstantsBold
  hi! link htmlItalic     RiasStringColorItalic
  hi! link mkdBlockquote  RiasStringColorItalic
  hi! link mkdBold        RiasParameterBold
  hi! link mkdBoldItalic  RiasParameterBoldItalic
  hi! link mkdCode        RiasClassName
  hi! link mkdCodeEnd     RiasClassName
  hi! link mkdCodeStart   RiasClassName
  hi! link mkdHeading     RiasConstantsBold
  hi! link mkdInlineUrl   RiasLink
  hi! link mkdItalic      RiasStringColorItalic
  hi! link mkdLink        RiasKeyword
  hi! link mkdListItem    RiasKeyColor
  hi! link mkdRule        RiasComment
  hi! link mkdUrl         RiasLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RiasKeyColor
  hi! link markdownBold              RiasParameterBold
  hi! link markdownBoldItalic        RiasParameterBoldItalic
  hi! link markdownCodeBlock         RiasClassName
  hi! link markdownCode              RiasClassName
  hi! link markdownCodeDelimiter     RiasClassName
  hi! link markdownH1                RiasConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RiasStringColorItalic
  hi! link markdownLinkText          RiasKeyword
  hi! link markdownListMarker        RiasKeyColor
  hi! link markdownOrderedListMarker RiasKeyColor
  hi! link markdownRule              RiasComment
  hi! link markdownUrl               RiasLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
