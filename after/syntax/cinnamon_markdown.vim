if cinnamon#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       CinnamonParameterBold
  hi! link htmlBoldItalic CinnamonParameterBoldItalic
  hi! link htmlH1         CinnamonConstantsBold
  hi! link htmlItalic     CinnamonStringColorItalic
  hi! link mkdBlockquote  CinnamonStringColorItalic
  hi! link mkdBold        CinnamonParameterBold
  hi! link mkdBoldItalic  CinnamonParameterBoldItalic
  hi! link mkdCode        CinnamonClassName
  hi! link mkdCodeEnd     CinnamonClassName
  hi! link mkdCodeStart   CinnamonClassName
  hi! link mkdHeading     CinnamonConstantsBold
  hi! link mkdInlineUrl   CinnamonLink
  hi! link mkdItalic      CinnamonStringColorItalic
  hi! link mkdLink        CinnamonKeyword
  hi! link mkdListItem    CinnamonKeyColor
  hi! link mkdRule        CinnamonComment
  hi! link mkdUrl         CinnamonLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        CinnamonKeyColor
  hi! link markdownBold              CinnamonParameterBold
  hi! link markdownBoldItalic        CinnamonParameterBoldItalic
  hi! link markdownCodeBlock         CinnamonClassName
  hi! link markdownCode              CinnamonClassName
  hi! link markdownCodeDelimiter     CinnamonClassName
  hi! link markdownH1                CinnamonConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            CinnamonStringColorItalic
  hi! link markdownLinkText          CinnamonKeyword
  hi! link markdownListMarker        CinnamonKeyColor
  hi! link markdownOrderedListMarker CinnamonKeyColor
  hi! link markdownRule              CinnamonComment
  hi! link markdownUrl               CinnamonLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
