if mioda_ibuki_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MiodaIbukiDarkParameterBold
  hi! link htmlBoldItalic MiodaIbukiDarkParameterBoldItalic
  hi! link htmlH1         MiodaIbukiDarkConstantsBold
  hi! link htmlItalic     MiodaIbukiDarkStringColorItalic
  hi! link mkdBlockquote  MiodaIbukiDarkStringColorItalic
  hi! link mkdBold        MiodaIbukiDarkParameterBold
  hi! link mkdBoldItalic  MiodaIbukiDarkParameterBoldItalic
  hi! link mkdCode        MiodaIbukiDarkClassName
  hi! link mkdCodeEnd     MiodaIbukiDarkClassName
  hi! link mkdCodeStart   MiodaIbukiDarkClassName
  hi! link mkdHeading     MiodaIbukiDarkConstantsBold
  hi! link mkdInlineUrl   MiodaIbukiDarkLink
  hi! link mkdItalic      MiodaIbukiDarkStringColorItalic
  hi! link mkdLink        MiodaIbukiDarkKeyword
  hi! link mkdListItem    MiodaIbukiDarkKeyColor
  hi! link mkdRule        MiodaIbukiDarkComment
  hi! link mkdUrl         MiodaIbukiDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MiodaIbukiDarkKeyColor
  hi! link markdownBold              MiodaIbukiDarkParameterBold
  hi! link markdownBoldItalic        MiodaIbukiDarkParameterBoldItalic
  hi! link markdownCodeBlock         MiodaIbukiDarkClassName
  hi! link markdownCode              MiodaIbukiDarkClassName
  hi! link markdownCodeDelimiter     MiodaIbukiDarkClassName
  hi! link markdownH1                MiodaIbukiDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MiodaIbukiDarkStringColorItalic
  hi! link markdownLinkText          MiodaIbukiDarkKeyword
  hi! link markdownListMarker        MiodaIbukiDarkKeyColor
  hi! link markdownOrderedListMarker MiodaIbukiDarkKeyColor
  hi! link markdownRule              MiodaIbukiDarkComment
  hi! link markdownUrl               MiodaIbukiDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
