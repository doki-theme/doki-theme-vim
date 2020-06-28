if darkness_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       DarknessLightParameterBold
  hi! link htmlBoldItalic DarknessLightParameterBoldItalic
  hi! link htmlH1         DarknessLightConstantsBold
  hi! link htmlItalic     DarknessLightStringColorItalic
  hi! link mkdBlockquote  DarknessLightStringColorItalic
  hi! link mkdBold        DarknessLightParameterBold
  hi! link mkdBoldItalic  DarknessLightParameterBoldItalic
  hi! link mkdCode        DarknessLightClassName
  hi! link mkdCodeEnd     DarknessLightClassName
  hi! link mkdCodeStart   DarknessLightClassName
  hi! link mkdHeading     DarknessLightConstantsBold
  hi! link mkdInlineUrl   DarknessLightLink
  hi! link mkdItalic      DarknessLightStringColorItalic
  hi! link mkdLink        DarknessLightKeyword
  hi! link mkdListItem    DarknessLightKeyColor
  hi! link mkdRule        DarknessLightComment
  hi! link mkdUrl         DarknessLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        DarknessLightKeyColor
  hi! link markdownBold              DarknessLightParameterBold
  hi! link markdownBoldItalic        DarknessLightParameterBoldItalic
  hi! link markdownCodeBlock         DarknessLightClassName
  hi! link markdownCode              DarknessLightClassName
  hi! link markdownCodeDelimiter     DarknessLightClassName
  hi! link markdownH1                DarknessLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            DarknessLightStringColorItalic
  hi! link markdownLinkText          DarknessLightKeyword
  hi! link markdownListMarker        DarknessLightKeyColor
  hi! link markdownOrderedListMarker DarknessLightKeyColor
  hi! link markdownRule              DarknessLightComment
  hi! link markdownUrl               DarknessLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
