if ryuko_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       RyukoDarkParameterBold
  hi! link htmlBoldItalic RyukoDarkParameterBoldItalic
  hi! link htmlH1         RyukoDarkConstantsBold
  hi! link htmlItalic     RyukoDarkStringColorItalic
  hi! link mkdBlockquote  RyukoDarkStringColorItalic
  hi! link mkdBold        RyukoDarkParameterBold
  hi! link mkdBoldItalic  RyukoDarkParameterBoldItalic
  hi! link mkdCode        RyukoDarkClassName
  hi! link mkdCodeEnd     RyukoDarkClassName
  hi! link mkdCodeStart   RyukoDarkClassName
  hi! link mkdHeading     RyukoDarkConstantsBold
  hi! link mkdInlineUrl   RyukoDarkLink
  hi! link mkdItalic      RyukoDarkStringColorItalic
  hi! link mkdLink        RyukoDarkKeyword
  hi! link mkdListItem    RyukoDarkKeyColor
  hi! link mkdRule        RyukoDarkComment
  hi! link mkdUrl         RyukoDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        RyukoDarkKeyColor
  hi! link markdownBold              RyukoDarkParameterBold
  hi! link markdownBoldItalic        RyukoDarkParameterBoldItalic
  hi! link markdownCodeBlock         RyukoDarkClassName
  hi! link markdownCode              RyukoDarkClassName
  hi! link markdownCodeDelimiter     RyukoDarkClassName
  hi! link markdownH1                RyukoDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            RyukoDarkStringColorItalic
  hi! link markdownLinkText          RyukoDarkKeyword
  hi! link markdownListMarker        RyukoDarkKeyColor
  hi! link markdownOrderedListMarker RyukoDarkKeyColor
  hi! link markdownRule              RyukoDarkComment
  hi! link markdownUrl               RyukoDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
