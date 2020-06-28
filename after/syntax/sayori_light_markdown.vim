if sayori_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SayoriLightParameterBold
  hi! link htmlBoldItalic SayoriLightParameterBoldItalic
  hi! link htmlH1         SayoriLightConstantsBold
  hi! link htmlItalic     SayoriLightStringColorItalic
  hi! link mkdBlockquote  SayoriLightStringColorItalic
  hi! link mkdBold        SayoriLightParameterBold
  hi! link mkdBoldItalic  SayoriLightParameterBoldItalic
  hi! link mkdCode        SayoriLightClassName
  hi! link mkdCodeEnd     SayoriLightClassName
  hi! link mkdCodeStart   SayoriLightClassName
  hi! link mkdHeading     SayoriLightConstantsBold
  hi! link mkdInlineUrl   SayoriLightLink
  hi! link mkdItalic      SayoriLightStringColorItalic
  hi! link mkdLink        SayoriLightKeyword
  hi! link mkdListItem    SayoriLightKeyColor
  hi! link mkdRule        SayoriLightComment
  hi! link mkdUrl         SayoriLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SayoriLightKeyColor
  hi! link markdownBold              SayoriLightParameterBold
  hi! link markdownBoldItalic        SayoriLightParameterBoldItalic
  hi! link markdownCodeBlock         SayoriLightClassName
  hi! link markdownCode              SayoriLightClassName
  hi! link markdownCodeDelimiter     SayoriLightClassName
  hi! link markdownH1                SayoriLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SayoriLightStringColorItalic
  hi! link markdownLinkText          SayoriLightKeyword
  hi! link markdownListMarker        SayoriLightKeyColor
  hi! link markdownOrderedListMarker SayoriLightKeyColor
  hi! link markdownRule              SayoriLightComment
  hi! link markdownUrl               SayoriLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
