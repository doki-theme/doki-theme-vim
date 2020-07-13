if misato_katsuragi#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MisatoKatsuragiParameterBold
  hi! link htmlBoldItalic MisatoKatsuragiParameterBoldItalic
  hi! link htmlH1         MisatoKatsuragiConstantsBold
  hi! link htmlItalic     MisatoKatsuragiStringColorItalic
  hi! link mkdBlockquote  MisatoKatsuragiStringColorItalic
  hi! link mkdBold        MisatoKatsuragiParameterBold
  hi! link mkdBoldItalic  MisatoKatsuragiParameterBoldItalic
  hi! link mkdCode        MisatoKatsuragiClassName
  hi! link mkdCodeEnd     MisatoKatsuragiClassName
  hi! link mkdCodeStart   MisatoKatsuragiClassName
  hi! link mkdHeading     MisatoKatsuragiConstantsBold
  hi! link mkdInlineUrl   MisatoKatsuragiLink
  hi! link mkdItalic      MisatoKatsuragiStringColorItalic
  hi! link mkdLink        MisatoKatsuragiKeyword
  hi! link mkdListItem    MisatoKatsuragiKeyColor
  hi! link mkdRule        MisatoKatsuragiComment
  hi! link mkdUrl         MisatoKatsuragiLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MisatoKatsuragiKeyColor
  hi! link markdownBold              MisatoKatsuragiParameterBold
  hi! link markdownBoldItalic        MisatoKatsuragiParameterBoldItalic
  hi! link markdownCodeBlock         MisatoKatsuragiClassName
  hi! link markdownCode              MisatoKatsuragiClassName
  hi! link markdownCodeDelimiter     MisatoKatsuragiClassName
  hi! link markdownH1                MisatoKatsuragiConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MisatoKatsuragiStringColorItalic
  hi! link markdownLinkText          MisatoKatsuragiKeyword
  hi! link markdownListMarker        MisatoKatsuragiKeyColor
  hi! link markdownOrderedListMarker MisatoKatsuragiKeyColor
  hi! link markdownRule              MisatoKatsuragiComment
  hi! link markdownUrl               MisatoKatsuragiLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
