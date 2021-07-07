if coconut#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       CoconutParameterBold
  hi! link htmlBoldItalic CoconutParameterBoldItalic
  hi! link htmlH1         CoconutConstantsBold
  hi! link htmlItalic     CoconutStringColorItalic
  hi! link mkdBlockquote  CoconutStringColorItalic
  hi! link mkdBold        CoconutParameterBold
  hi! link mkdBoldItalic  CoconutParameterBoldItalic
  hi! link mkdCode        CoconutClassName
  hi! link mkdCodeEnd     CoconutClassName
  hi! link mkdCodeStart   CoconutClassName
  hi! link mkdHeading     CoconutConstantsBold
  hi! link mkdInlineUrl   CoconutLink
  hi! link mkdItalic      CoconutStringColorItalic
  hi! link mkdLink        CoconutKeyword
  hi! link mkdListItem    CoconutKeyColor
  hi! link mkdRule        CoconutComment
  hi! link mkdUrl         CoconutLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        CoconutKeyColor
  hi! link markdownBold              CoconutParameterBold
  hi! link markdownBoldItalic        CoconutParameterBoldItalic
  hi! link markdownCodeBlock         CoconutClassName
  hi! link markdownCode              CoconutClassName
  hi! link markdownCodeDelimiter     CoconutClassName
  hi! link markdownH1                CoconutConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            CoconutStringColorItalic
  hi! link markdownLinkText          CoconutKeyword
  hi! link markdownListMarker        CoconutKeyColor
  hi! link markdownOrderedListMarker CoconutKeyColor
  hi! link markdownRule              CoconutComment
  hi! link markdownUrl               CoconutLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
