if astolfo#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AstolfoParameterBold
  hi! link htmlBoldItalic AstolfoParameterBoldItalic
  hi! link htmlH1         AstolfoConstantsBold
  hi! link htmlItalic     AstolfoStringColorItalic
  hi! link mkdBlockquote  AstolfoStringColorItalic
  hi! link mkdBold        AstolfoParameterBold
  hi! link mkdBoldItalic  AstolfoParameterBoldItalic
  hi! link mkdCode        AstolfoClassName
  hi! link mkdCodeEnd     AstolfoClassName
  hi! link mkdCodeStart   AstolfoClassName
  hi! link mkdHeading     AstolfoConstantsBold
  hi! link mkdInlineUrl   AstolfoLink
  hi! link mkdItalic      AstolfoStringColorItalic
  hi! link mkdLink        AstolfoKeyword
  hi! link mkdListItem    AstolfoKeyColor
  hi! link mkdRule        AstolfoComment
  hi! link mkdUrl         AstolfoLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AstolfoKeyColor
  hi! link markdownBold              AstolfoParameterBold
  hi! link markdownBoldItalic        AstolfoParameterBoldItalic
  hi! link markdownCodeBlock         AstolfoClassName
  hi! link markdownCode              AstolfoClassName
  hi! link markdownCodeDelimiter     AstolfoClassName
  hi! link markdownH1                AstolfoConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AstolfoStringColorItalic
  hi! link markdownLinkText          AstolfoKeyword
  hi! link markdownListMarker        AstolfoKeyColor
  hi! link markdownOrderedListMarker AstolfoKeyColor
  hi! link markdownRule              AstolfoComment
  hi! link markdownUrl               AstolfoLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
