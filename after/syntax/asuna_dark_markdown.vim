if asuna_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       AsunaDarkParameterBold
  hi! link htmlBoldItalic AsunaDarkParameterBoldItalic
  hi! link htmlH1         AsunaDarkConstantsBold
  hi! link htmlItalic     AsunaDarkStringColorItalic
  hi! link mkdBlockquote  AsunaDarkStringColorItalic
  hi! link mkdBold        AsunaDarkParameterBold
  hi! link mkdBoldItalic  AsunaDarkParameterBoldItalic
  hi! link mkdCode        AsunaDarkClassName
  hi! link mkdCodeEnd     AsunaDarkClassName
  hi! link mkdCodeStart   AsunaDarkClassName
  hi! link mkdHeading     AsunaDarkConstantsBold
  hi! link mkdInlineUrl   AsunaDarkLink
  hi! link mkdItalic      AsunaDarkStringColorItalic
  hi! link mkdLink        AsunaDarkKeyword
  hi! link mkdListItem    AsunaDarkKeyColor
  hi! link mkdRule        AsunaDarkComment
  hi! link mkdUrl         AsunaDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        AsunaDarkKeyColor
  hi! link markdownBold              AsunaDarkParameterBold
  hi! link markdownBoldItalic        AsunaDarkParameterBoldItalic
  hi! link markdownCodeBlock         AsunaDarkClassName
  hi! link markdownCode              AsunaDarkClassName
  hi! link markdownCodeDelimiter     AsunaDarkClassName
  hi! link markdownH1                AsunaDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            AsunaDarkStringColorItalic
  hi! link markdownLinkText          AsunaDarkKeyword
  hi! link markdownListMarker        AsunaDarkKeyColor
  hi! link markdownOrderedListMarker AsunaDarkKeyColor
  hi! link markdownRule              AsunaDarkComment
  hi! link markdownUrl               AsunaDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
