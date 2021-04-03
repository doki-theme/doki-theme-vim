if rei#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       ReiParameterBold
  hi! link htmlBoldItalic ReiParameterBoldItalic
  hi! link htmlH1         ReiConstantsBold
  hi! link htmlItalic     ReiStringColorItalic
  hi! link mkdBlockquote  ReiStringColorItalic
  hi! link mkdBold        ReiParameterBold
  hi! link mkdBoldItalic  ReiParameterBoldItalic
  hi! link mkdCode        ReiClassName
  hi! link mkdCodeEnd     ReiClassName
  hi! link mkdCodeStart   ReiClassName
  hi! link mkdHeading     ReiConstantsBold
  hi! link mkdInlineUrl   ReiLink
  hi! link mkdItalic      ReiStringColorItalic
  hi! link mkdLink        ReiKeyword
  hi! link mkdListItem    ReiKeyColor
  hi! link mkdRule        ReiComment
  hi! link mkdUrl         ReiLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        ReiKeyColor
  hi! link markdownBold              ReiParameterBold
  hi! link markdownBoldItalic        ReiParameterBoldItalic
  hi! link markdownCodeBlock         ReiClassName
  hi! link markdownCode              ReiClassName
  hi! link markdownCodeDelimiter     ReiClassName
  hi! link markdownH1                ReiConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            ReiStringColorItalic
  hi! link markdownLinkText          ReiKeyword
  hi! link markdownListMarker        ReiKeyColor
  hi! link markdownOrderedListMarker ReiKeyColor
  hi! link markdownRule              ReiComment
  hi! link markdownUrl               ReiLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
