if sonoda_umi#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SonodaUmiParameterBold
  hi! link htmlBoldItalic SonodaUmiParameterBoldItalic
  hi! link htmlH1         SonodaUmiConstantsBold
  hi! link htmlItalic     SonodaUmiStringColorItalic
  hi! link mkdBlockquote  SonodaUmiStringColorItalic
  hi! link mkdBold        SonodaUmiParameterBold
  hi! link mkdBoldItalic  SonodaUmiParameterBoldItalic
  hi! link mkdCode        SonodaUmiClassName
  hi! link mkdCodeEnd     SonodaUmiClassName
  hi! link mkdCodeStart   SonodaUmiClassName
  hi! link mkdHeading     SonodaUmiConstantsBold
  hi! link mkdInlineUrl   SonodaUmiLink
  hi! link mkdItalic      SonodaUmiStringColorItalic
  hi! link mkdLink        SonodaUmiKeyword
  hi! link mkdListItem    SonodaUmiKeyColor
  hi! link mkdRule        SonodaUmiComment
  hi! link mkdUrl         SonodaUmiLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SonodaUmiKeyColor
  hi! link markdownBold              SonodaUmiParameterBold
  hi! link markdownBoldItalic        SonodaUmiParameterBoldItalic
  hi! link markdownCodeBlock         SonodaUmiClassName
  hi! link markdownCode              SonodaUmiClassName
  hi! link markdownCodeDelimiter     SonodaUmiClassName
  hi! link markdownH1                SonodaUmiConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SonodaUmiStringColorItalic
  hi! link markdownLinkText          SonodaUmiKeyword
  hi! link markdownListMarker        SonodaUmiKeyColor
  hi! link markdownOrderedListMarker SonodaUmiKeyColor
  hi! link markdownRule              SonodaUmiComment
  hi! link markdownUrl               SonodaUmiLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
