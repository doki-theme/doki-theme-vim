if monika_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MonikaDarkParameterBold
  hi! link htmlBoldItalic MonikaDarkParameterBoldItalic
  hi! link htmlH1         MonikaDarkConstantsBold
  hi! link htmlItalic     MonikaDarkStringColorItalic
  hi! link mkdBlockquote  MonikaDarkStringColorItalic
  hi! link mkdBold        MonikaDarkParameterBold
  hi! link mkdBoldItalic  MonikaDarkParameterBoldItalic
  hi! link mkdCode        MonikaDarkClassName
  hi! link mkdCodeEnd     MonikaDarkClassName
  hi! link mkdCodeStart   MonikaDarkClassName
  hi! link mkdHeading     MonikaDarkConstantsBold
  hi! link mkdInlineUrl   MonikaDarkLink
  hi! link mkdItalic      MonikaDarkStringColorItalic
  hi! link mkdLink        MonikaDarkKeyword
  hi! link mkdListItem    MonikaDarkKeyColor
  hi! link mkdRule        MonikaDarkComment
  hi! link mkdUrl         MonikaDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MonikaDarkKeyColor
  hi! link markdownBold              MonikaDarkParameterBold
  hi! link markdownBoldItalic        MonikaDarkParameterBoldItalic
  hi! link markdownCodeBlock         MonikaDarkClassName
  hi! link markdownCode              MonikaDarkClassName
  hi! link markdownCodeDelimiter     MonikaDarkClassName
  hi! link markdownH1                MonikaDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MonikaDarkStringColorItalic
  hi! link markdownLinkText          MonikaDarkKeyword
  hi! link markdownListMarker        MonikaDarkKeyColor
  hi! link markdownOrderedListMarker MonikaDarkKeyColor
  hi! link markdownRule              MonikaDarkComment
  hi! link markdownUrl               MonikaDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
