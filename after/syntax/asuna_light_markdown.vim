if asuna_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AsunaLightParameterBold
  hi! link htmlBoldItalic AsunaLightParameterBoldItalic
  hi! link htmlH1         AsunaLightConstantsBold
  hi! link htmlItalic     AsunaLightStringColorItalic
  hi! link mkdBlockquote  AsunaLightStringColorItalic
  hi! link mkdBold        AsunaLightParameterBold
  hi! link mkdBoldItalic  AsunaLightParameterBoldItalic
  hi! link mkdCode        AsunaLightClassName
  hi! link mkdCodeEnd     AsunaLightClassName
  hi! link mkdCodeStart   AsunaLightClassName
  hi! link mkdHeading     AsunaLightConstantsBold
  hi! link mkdInlineUrl   AsunaLightLink
  hi! link mkdItalic      AsunaLightStringColorItalic
  hi! link mkdLink        AsunaLightKeyword
  hi! link mkdListItem    AsunaLightKeyColor
  hi! link mkdRule        AsunaLightComment
  hi! link mkdUrl         AsunaLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AsunaLightKeyColor
  hi! link markdownBold              AsunaLightParameterBold
  hi! link markdownBoldItalic        AsunaLightParameterBoldItalic
  hi! link markdownCodeBlock         AsunaLightClassName
  hi! link markdownCode              AsunaLightClassName
  hi! link markdownCodeDelimiter     AsunaLightClassName
  hi! link markdownH1                AsunaLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AsunaLightStringColorItalic
  hi! link markdownLinkText          AsunaLightKeyword
  hi! link markdownListMarker        AsunaLightKeyColor
  hi! link markdownOrderedListMarker AsunaLightKeyColor
  hi! link markdownRule              AsunaLightComment
  hi! link markdownUrl               AsunaLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
