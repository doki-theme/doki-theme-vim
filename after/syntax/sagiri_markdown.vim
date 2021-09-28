if sagiri#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       SagiriParameterBold
  hi! link htmlBoldItalic SagiriParameterBoldItalic
  hi! link htmlH1         SagiriConstantsBold
  hi! link htmlItalic     SagiriStringColorItalic
  hi! link mkdBlockquote  SagiriStringColorItalic
  hi! link mkdBold        SagiriParameterBold
  hi! link mkdBoldItalic  SagiriParameterBoldItalic
  hi! link mkdCode        SagiriClassName
  hi! link mkdCodeEnd     SagiriClassName
  hi! link mkdCodeStart   SagiriClassName
  hi! link mkdHeading     SagiriConstantsBold
  hi! link mkdInlineUrl   SagiriLink
  hi! link mkdItalic      SagiriStringColorItalic
  hi! link mkdLink        SagiriKeyword
  hi! link mkdListItem    SagiriKeyColor
  hi! link mkdRule        SagiriComment
  hi! link mkdUrl         SagiriLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        SagiriKeyColor
  hi! link markdownBold              SagiriParameterBold
  hi! link markdownBoldItalic        SagiriParameterBoldItalic
  hi! link markdownCodeBlock         SagiriClassName
  hi! link markdownCode              SagiriClassName
  hi! link markdownCodeDelimiter     SagiriClassName
  hi! link markdownH1                SagiriConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            SagiriStringColorItalic
  hi! link markdownLinkText          SagiriKeyword
  hi! link markdownListMarker        SagiriKeyColor
  hi! link markdownOrderedListMarker SagiriKeyColor
  hi! link markdownRule              SagiriComment
  hi! link markdownUrl               SagiriLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
