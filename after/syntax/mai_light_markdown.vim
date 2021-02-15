if mai_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MaiLightParameterBold
  hi! link htmlBoldItalic MaiLightParameterBoldItalic
  hi! link htmlH1         MaiLightConstantsBold
  hi! link htmlItalic     MaiLightStringColorItalic
  hi! link mkdBlockquote  MaiLightStringColorItalic
  hi! link mkdBold        MaiLightParameterBold
  hi! link mkdBoldItalic  MaiLightParameterBoldItalic
  hi! link mkdCode        MaiLightClassName
  hi! link mkdCodeEnd     MaiLightClassName
  hi! link mkdCodeStart   MaiLightClassName
  hi! link mkdHeading     MaiLightConstantsBold
  hi! link mkdInlineUrl   MaiLightLink
  hi! link mkdItalic      MaiLightStringColorItalic
  hi! link mkdLink        MaiLightKeyword
  hi! link mkdListItem    MaiLightKeyColor
  hi! link mkdRule        MaiLightComment
  hi! link mkdUrl         MaiLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MaiLightKeyColor
  hi! link markdownBold              MaiLightParameterBold
  hi! link markdownBoldItalic        MaiLightParameterBoldItalic
  hi! link markdownCodeBlock         MaiLightClassName
  hi! link markdownCode              MaiLightClassName
  hi! link markdownCodeDelimiter     MaiLightClassName
  hi! link markdownH1                MaiLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MaiLightStringColorItalic
  hi! link markdownLinkText          MaiLightKeyword
  hi! link markdownListMarker        MaiLightKeyColor
  hi! link markdownOrderedListMarker MaiLightKeyColor
  hi! link markdownRule              MaiLightComment
  hi! link markdownUrl               MaiLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
