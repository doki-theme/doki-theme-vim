if monika_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MonikaLightParameterBold
  hi! link htmlBoldItalic MonikaLightParameterBoldItalic
  hi! link htmlH1         MonikaLightConstantsBold
  hi! link htmlItalic     MonikaLightStringColorItalic
  hi! link mkdBlockquote  MonikaLightStringColorItalic
  hi! link mkdBold        MonikaLightParameterBold
  hi! link mkdBoldItalic  MonikaLightParameterBoldItalic
  hi! link mkdCode        MonikaLightClassName
  hi! link mkdCodeEnd     MonikaLightClassName
  hi! link mkdCodeStart   MonikaLightClassName
  hi! link mkdHeading     MonikaLightConstantsBold
  hi! link mkdInlineUrl   MonikaLightLink
  hi! link mkdItalic      MonikaLightStringColorItalic
  hi! link mkdLink        MonikaLightKeyword
  hi! link mkdListItem    MonikaLightKeyColor
  hi! link mkdRule        MonikaLightComment
  hi! link mkdUrl         MonikaLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MonikaLightKeyColor
  hi! link markdownBold              MonikaLightParameterBold
  hi! link markdownBoldItalic        MonikaLightParameterBoldItalic
  hi! link markdownCodeBlock         MonikaLightClassName
  hi! link markdownCode              MonikaLightClassName
  hi! link markdownCodeDelimiter     MonikaLightClassName
  hi! link markdownH1                MonikaLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MonikaLightStringColorItalic
  hi! link markdownLinkText          MonikaLightKeyword
  hi! link markdownListMarker        MonikaLightKeyColor
  hi! link markdownOrderedListMarker MonikaLightKeyColor
  hi! link markdownRule              MonikaLightComment
  hi! link markdownUrl               MonikaLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
