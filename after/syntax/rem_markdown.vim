if rem#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RemParameterBold
  hi! link htmlBoldItalic RemParameterBoldItalic
  hi! link htmlH1         RemConstantsBold
  hi! link htmlItalic     RemStringColorItalic
  hi! link mkdBlockquote  RemStringColorItalic
  hi! link mkdBold        RemParameterBold
  hi! link mkdBoldItalic  RemParameterBoldItalic
  hi! link mkdCode        RemClassName
  hi! link mkdCodeEnd     RemClassName
  hi! link mkdCodeStart   RemClassName
  hi! link mkdHeading     RemConstantsBold
  hi! link mkdInlineUrl   RemLink
  hi! link mkdItalic      RemStringColorItalic
  hi! link mkdLink        RemKeyword
  hi! link mkdListItem    RemKeyColor
  hi! link mkdRule        RemComment
  hi! link mkdUrl         RemLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RemKeyColor
  hi! link markdownBold              RemParameterBold
  hi! link markdownBoldItalic        RemParameterBoldItalic
  hi! link markdownCodeBlock         RemClassName
  hi! link markdownCode              RemClassName
  hi! link markdownCodeDelimiter     RemClassName
  hi! link markdownH1                RemConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RemStringColorItalic
  hi! link markdownLinkText          RemKeyword
  hi! link markdownListMarker        RemKeyColor
  hi! link markdownOrderedListMarker RemKeyColor
  hi! link markdownRule              RemComment
  hi! link markdownUrl               RemLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
