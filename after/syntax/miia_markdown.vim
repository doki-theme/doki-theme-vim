if miia#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MiiaParameterBold
  hi! link htmlBoldItalic MiiaParameterBoldItalic
  hi! link htmlH1         MiiaConstantsBold
  hi! link htmlItalic     MiiaStringColorItalic
  hi! link mkdBlockquote  MiiaStringColorItalic
  hi! link mkdBold        MiiaParameterBold
  hi! link mkdBoldItalic  MiiaParameterBoldItalic
  hi! link mkdCode        MiiaClassName
  hi! link mkdCodeEnd     MiiaClassName
  hi! link mkdCodeStart   MiiaClassName
  hi! link mkdHeading     MiiaConstantsBold
  hi! link mkdInlineUrl   MiiaLink
  hi! link mkdItalic      MiiaStringColorItalic
  hi! link mkdLink        MiiaKeyword
  hi! link mkdListItem    MiiaKeyColor
  hi! link mkdRule        MiiaComment
  hi! link mkdUrl         MiiaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MiiaKeyColor
  hi! link markdownBold              MiiaParameterBold
  hi! link markdownBoldItalic        MiiaParameterBoldItalic
  hi! link markdownCodeBlock         MiiaClassName
  hi! link markdownCode              MiiaClassName
  hi! link markdownCodeDelimiter     MiiaClassName
  hi! link markdownH1                MiiaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MiiaStringColorItalic
  hi! link markdownLinkText          MiiaKeyword
  hi! link markdownListMarker        MiiaKeyColor
  hi! link markdownOrderedListMarker MiiaKeyColor
  hi! link markdownRule              MiiaComment
  hi! link markdownUrl               MiiaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
