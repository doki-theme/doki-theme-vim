if mai_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MaiDarkParameterBold
  hi! link htmlBoldItalic MaiDarkParameterBoldItalic
  hi! link htmlH1         MaiDarkConstantsBold
  hi! link htmlItalic     MaiDarkStringColorItalic
  hi! link mkdBlockquote  MaiDarkStringColorItalic
  hi! link mkdBold        MaiDarkParameterBold
  hi! link mkdBoldItalic  MaiDarkParameterBoldItalic
  hi! link mkdCode        MaiDarkClassName
  hi! link mkdCodeEnd     MaiDarkClassName
  hi! link mkdCodeStart   MaiDarkClassName
  hi! link mkdHeading     MaiDarkConstantsBold
  hi! link mkdInlineUrl   MaiDarkLink
  hi! link mkdItalic      MaiDarkStringColorItalic
  hi! link mkdLink        MaiDarkKeyword
  hi! link mkdListItem    MaiDarkKeyColor
  hi! link mkdRule        MaiDarkComment
  hi! link mkdUrl         MaiDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MaiDarkKeyColor
  hi! link markdownBold              MaiDarkParameterBold
  hi! link markdownBoldItalic        MaiDarkParameterBoldItalic
  hi! link markdownCodeBlock         MaiDarkClassName
  hi! link markdownCode              MaiDarkClassName
  hi! link markdownCodeDelimiter     MaiDarkClassName
  hi! link markdownH1                MaiDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MaiDarkStringColorItalic
  hi! link markdownLinkText          MaiDarkKeyword
  hi! link markdownListMarker        MaiDarkKeyColor
  hi! link markdownOrderedListMarker MaiDarkKeyColor
  hi! link markdownRule              MaiDarkComment
  hi! link markdownUrl               MaiDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
