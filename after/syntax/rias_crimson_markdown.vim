if rias_crimson#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RiasCrimsonParameterBold
  hi! link htmlBoldItalic RiasCrimsonParameterBoldItalic
  hi! link htmlH1         RiasCrimsonConstantsBold
  hi! link htmlItalic     RiasCrimsonStringColorItalic
  hi! link mkdBlockquote  RiasCrimsonStringColorItalic
  hi! link mkdBold        RiasCrimsonParameterBold
  hi! link mkdBoldItalic  RiasCrimsonParameterBoldItalic
  hi! link mkdCode        RiasCrimsonClassName
  hi! link mkdCodeEnd     RiasCrimsonClassName
  hi! link mkdCodeStart   RiasCrimsonClassName
  hi! link mkdHeading     RiasCrimsonConstantsBold
  hi! link mkdInlineUrl   RiasCrimsonLink
  hi! link mkdItalic      RiasCrimsonStringColorItalic
  hi! link mkdLink        RiasCrimsonKeyword
  hi! link mkdListItem    RiasCrimsonKeyColor
  hi! link mkdRule        RiasCrimsonComment
  hi! link mkdUrl         RiasCrimsonLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RiasCrimsonKeyColor
  hi! link markdownBold              RiasCrimsonParameterBold
  hi! link markdownBoldItalic        RiasCrimsonParameterBoldItalic
  hi! link markdownCodeBlock         RiasCrimsonClassName
  hi! link markdownCode              RiasCrimsonClassName
  hi! link markdownCodeDelimiter     RiasCrimsonClassName
  hi! link markdownH1                RiasCrimsonConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RiasCrimsonStringColorItalic
  hi! link markdownLinkText          RiasCrimsonKeyword
  hi! link markdownListMarker        RiasCrimsonKeyColor
  hi! link markdownOrderedListMarker RiasCrimsonKeyColor
  hi! link markdownRule              RiasCrimsonComment
  hi! link markdownUrl               RiasCrimsonLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
