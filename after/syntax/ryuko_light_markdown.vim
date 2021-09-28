if ryuko_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RyukoLightParameterBold
  hi! link htmlBoldItalic RyukoLightParameterBoldItalic
  hi! link htmlH1         RyukoLightConstantsBold
  hi! link htmlItalic     RyukoLightStringColorItalic
  hi! link mkdBlockquote  RyukoLightStringColorItalic
  hi! link mkdBold        RyukoLightParameterBold
  hi! link mkdBoldItalic  RyukoLightParameterBoldItalic
  hi! link mkdCode        RyukoLightClassName
  hi! link mkdCodeEnd     RyukoLightClassName
  hi! link mkdCodeStart   RyukoLightClassName
  hi! link mkdHeading     RyukoLightConstantsBold
  hi! link mkdInlineUrl   RyukoLightLink
  hi! link mkdItalic      RyukoLightStringColorItalic
  hi! link mkdLink        RyukoLightKeyword
  hi! link mkdListItem    RyukoLightKeyColor
  hi! link mkdRule        RyukoLightComment
  hi! link mkdUrl         RyukoLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RyukoLightKeyColor
  hi! link markdownBold              RyukoLightParameterBold
  hi! link markdownBoldItalic        RyukoLightParameterBoldItalic
  hi! link markdownCodeBlock         RyukoLightClassName
  hi! link markdownCode              RyukoLightClassName
  hi! link markdownCodeDelimiter     RyukoLightClassName
  hi! link markdownH1                RyukoLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RyukoLightStringColorItalic
  hi! link markdownLinkText          RyukoLightKeyword
  hi! link markdownListMarker        RyukoLightKeyColor
  hi! link markdownOrderedListMarker RyukoLightKeyColor
  hi! link markdownRule              RyukoLightComment
  hi! link markdownUrl               RyukoLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
