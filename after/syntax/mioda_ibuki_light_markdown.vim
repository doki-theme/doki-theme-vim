if mioda_ibuki_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MiodaIbukiLightParameterBold
  hi! link htmlBoldItalic MiodaIbukiLightParameterBoldItalic
  hi! link htmlH1         MiodaIbukiLightConstantsBold
  hi! link htmlItalic     MiodaIbukiLightStringColorItalic
  hi! link mkdBlockquote  MiodaIbukiLightStringColorItalic
  hi! link mkdBold        MiodaIbukiLightParameterBold
  hi! link mkdBoldItalic  MiodaIbukiLightParameterBoldItalic
  hi! link mkdCode        MiodaIbukiLightClassName
  hi! link mkdCodeEnd     MiodaIbukiLightClassName
  hi! link mkdCodeStart   MiodaIbukiLightClassName
  hi! link mkdHeading     MiodaIbukiLightConstantsBold
  hi! link mkdInlineUrl   MiodaIbukiLightLink
  hi! link mkdItalic      MiodaIbukiLightStringColorItalic
  hi! link mkdLink        MiodaIbukiLightKeyword
  hi! link mkdListItem    MiodaIbukiLightKeyColor
  hi! link mkdRule        MiodaIbukiLightComment
  hi! link mkdUrl         MiodaIbukiLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MiodaIbukiLightKeyColor
  hi! link markdownBold              MiodaIbukiLightParameterBold
  hi! link markdownBoldItalic        MiodaIbukiLightParameterBoldItalic
  hi! link markdownCodeBlock         MiodaIbukiLightClassName
  hi! link markdownCode              MiodaIbukiLightClassName
  hi! link markdownCodeDelimiter     MiodaIbukiLightClassName
  hi! link markdownH1                MiodaIbukiLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MiodaIbukiLightStringColorItalic
  hi! link markdownLinkText          MiodaIbukiLightKeyword
  hi! link markdownListMarker        MiodaIbukiLightKeyColor
  hi! link markdownOrderedListMarker MiodaIbukiLightKeyColor
  hi! link markdownRule              MiodaIbukiLightComment
  hi! link markdownUrl               MiodaIbukiLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
