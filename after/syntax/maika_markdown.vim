if maika#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MaikaParameterBold
  hi! link htmlBoldItalic MaikaParameterBoldItalic
  hi! link htmlH1         MaikaConstantsBold
  hi! link htmlItalic     MaikaStringColorItalic
  hi! link mkdBlockquote  MaikaStringColorItalic
  hi! link mkdBold        MaikaParameterBold
  hi! link mkdBoldItalic  MaikaParameterBoldItalic
  hi! link mkdCode        MaikaClassName
  hi! link mkdCodeEnd     MaikaClassName
  hi! link mkdCodeStart   MaikaClassName
  hi! link mkdHeading     MaikaConstantsBold
  hi! link mkdInlineUrl   MaikaLink
  hi! link mkdItalic      MaikaStringColorItalic
  hi! link mkdLink        MaikaKeyword
  hi! link mkdListItem    MaikaKeyColor
  hi! link mkdRule        MaikaComment
  hi! link mkdUrl         MaikaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MaikaKeyColor
  hi! link markdownBold              MaikaParameterBold
  hi! link markdownBoldItalic        MaikaParameterBoldItalic
  hi! link markdownCodeBlock         MaikaClassName
  hi! link markdownCode              MaikaClassName
  hi! link markdownCodeDelimiter     MaikaClassName
  hi! link markdownH1                MaikaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MaikaStringColorItalic
  hi! link markdownLinkText          MaikaKeyword
  hi! link markdownListMarker        MaikaKeyColor
  hi! link markdownOrderedListMarker MaikaKeyColor
  hi! link markdownRule              MaikaComment
  hi! link markdownUrl               MaikaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
