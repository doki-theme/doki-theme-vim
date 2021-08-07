if maple_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MapleLightParameterBold
  hi! link htmlBoldItalic MapleLightParameterBoldItalic
  hi! link htmlH1         MapleLightConstantsBold
  hi! link htmlItalic     MapleLightStringColorItalic
  hi! link mkdBlockquote  MapleLightStringColorItalic
  hi! link mkdBold        MapleLightParameterBold
  hi! link mkdBoldItalic  MapleLightParameterBoldItalic
  hi! link mkdCode        MapleLightClassName
  hi! link mkdCodeEnd     MapleLightClassName
  hi! link mkdCodeStart   MapleLightClassName
  hi! link mkdHeading     MapleLightConstantsBold
  hi! link mkdInlineUrl   MapleLightLink
  hi! link mkdItalic      MapleLightStringColorItalic
  hi! link mkdLink        MapleLightKeyword
  hi! link mkdListItem    MapleLightKeyColor
  hi! link mkdRule        MapleLightComment
  hi! link mkdUrl         MapleLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MapleLightKeyColor
  hi! link markdownBold              MapleLightParameterBold
  hi! link markdownBoldItalic        MapleLightParameterBoldItalic
  hi! link markdownCodeBlock         MapleLightClassName
  hi! link markdownCode              MapleLightClassName
  hi! link markdownCodeDelimiter     MapleLightClassName
  hi! link markdownH1                MapleLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MapleLightStringColorItalic
  hi! link markdownLinkText          MapleLightKeyword
  hi! link markdownListMarker        MapleLightKeyColor
  hi! link markdownOrderedListMarker MapleLightKeyColor
  hi! link markdownRule              MapleLightComment
  hi! link markdownUrl               MapleLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
