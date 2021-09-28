if shigure#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ShigureParameterBold
  hi! link htmlBoldItalic ShigureParameterBoldItalic
  hi! link htmlH1         ShigureConstantsBold
  hi! link htmlItalic     ShigureStringColorItalic
  hi! link mkdBlockquote  ShigureStringColorItalic
  hi! link mkdBold        ShigureParameterBold
  hi! link mkdBoldItalic  ShigureParameterBoldItalic
  hi! link mkdCode        ShigureClassName
  hi! link mkdCodeEnd     ShigureClassName
  hi! link mkdCodeStart   ShigureClassName
  hi! link mkdHeading     ShigureConstantsBold
  hi! link mkdInlineUrl   ShigureLink
  hi! link mkdItalic      ShigureStringColorItalic
  hi! link mkdLink        ShigureKeyword
  hi! link mkdListItem    ShigureKeyColor
  hi! link mkdRule        ShigureComment
  hi! link mkdUrl         ShigureLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ShigureKeyColor
  hi! link markdownBold              ShigureParameterBold
  hi! link markdownBoldItalic        ShigureParameterBoldItalic
  hi! link markdownCodeBlock         ShigureClassName
  hi! link markdownCode              ShigureClassName
  hi! link markdownCodeDelimiter     ShigureClassName
  hi! link markdownH1                ShigureConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ShigureStringColorItalic
  hi! link markdownLinkText          ShigureKeyword
  hi! link markdownListMarker        ShigureKeyColor
  hi! link markdownOrderedListMarker ShigureKeyColor
  hi! link markdownRule              ShigureComment
  hi! link markdownUrl               ShigureLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
