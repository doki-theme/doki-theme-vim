if nakano_yotsuba#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       NakanoYotsubaParameterBold
  hi! link htmlBoldItalic NakanoYotsubaParameterBoldItalic
  hi! link htmlH1         NakanoYotsubaConstantsBold
  hi! link htmlItalic     NakanoYotsubaStringColorItalic
  hi! link mkdBlockquote  NakanoYotsubaStringColorItalic
  hi! link mkdBold        NakanoYotsubaParameterBold
  hi! link mkdBoldItalic  NakanoYotsubaParameterBoldItalic
  hi! link mkdCode        NakanoYotsubaClassName
  hi! link mkdCodeEnd     NakanoYotsubaClassName
  hi! link mkdCodeStart   NakanoYotsubaClassName
  hi! link mkdHeading     NakanoYotsubaConstantsBold
  hi! link mkdInlineUrl   NakanoYotsubaLink
  hi! link mkdItalic      NakanoYotsubaStringColorItalic
  hi! link mkdLink        NakanoYotsubaKeyword
  hi! link mkdListItem    NakanoYotsubaKeyColor
  hi! link mkdRule        NakanoYotsubaComment
  hi! link mkdUrl         NakanoYotsubaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        NakanoYotsubaKeyColor
  hi! link markdownBold              NakanoYotsubaParameterBold
  hi! link markdownBoldItalic        NakanoYotsubaParameterBoldItalic
  hi! link markdownCodeBlock         NakanoYotsubaClassName
  hi! link markdownCode              NakanoYotsubaClassName
  hi! link markdownCodeDelimiter     NakanoYotsubaClassName
  hi! link markdownH1                NakanoYotsubaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            NakanoYotsubaStringColorItalic
  hi! link markdownLinkText          NakanoYotsubaKeyword
  hi! link markdownListMarker        NakanoYotsubaKeyColor
  hi! link markdownOrderedListMarker NakanoYotsubaKeyColor
  hi! link markdownRule              NakanoYotsubaComment
  hi! link markdownUrl               NakanoYotsubaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
