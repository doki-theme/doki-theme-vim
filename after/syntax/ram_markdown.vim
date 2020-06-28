if ram#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RamParameterBold
  hi! link htmlBoldItalic RamParameterBoldItalic
  hi! link htmlH1         RamConstantsBold
  hi! link htmlItalic     RamStringColorItalic
  hi! link mkdBlockquote  RamStringColorItalic
  hi! link mkdBold        RamParameterBold
  hi! link mkdBoldItalic  RamParameterBoldItalic
  hi! link mkdCode        RamClassName
  hi! link mkdCodeEnd     RamClassName
  hi! link mkdCodeStart   RamClassName
  hi! link mkdHeading     RamConstantsBold
  hi! link mkdInlineUrl   RamLink
  hi! link mkdItalic      RamStringColorItalic
  hi! link mkdLink        RamKeyword
  hi! link mkdListItem    RamKeyColor
  hi! link mkdRule        RamComment
  hi! link mkdUrl         RamLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RamKeyColor
  hi! link markdownBold              RamParameterBold
  hi! link markdownBoldItalic        RamParameterBoldItalic
  hi! link markdownCodeBlock         RamClassName
  hi! link markdownCode              RamClassName
  hi! link markdownCodeDelimiter     RamClassName
  hi! link markdownH1                RamConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RamStringColorItalic
  hi! link markdownLinkText          RamKeyword
  hi! link markdownListMarker        RamKeyColor
  hi! link markdownOrderedListMarker RamKeyColor
  hi! link markdownRule              RamComment
  hi! link markdownUrl               RamLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
