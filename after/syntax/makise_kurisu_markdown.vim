if makise_kurisu#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       MakiseKurisuParameterBold
  hi! link htmlBoldItalic MakiseKurisuParameterBoldItalic
  hi! link htmlH1         MakiseKurisuConstantsBold
  hi! link htmlItalic     MakiseKurisuStringColorItalic
  hi! link mkdBlockquote  MakiseKurisuStringColorItalic
  hi! link mkdBold        MakiseKurisuParameterBold
  hi! link mkdBoldItalic  MakiseKurisuParameterBoldItalic
  hi! link mkdCode        MakiseKurisuClassName
  hi! link mkdCodeEnd     MakiseKurisuClassName
  hi! link mkdCodeStart   MakiseKurisuClassName
  hi! link mkdHeading     MakiseKurisuConstantsBold
  hi! link mkdInlineUrl   MakiseKurisuLink
  hi! link mkdItalic      MakiseKurisuStringColorItalic
  hi! link mkdLink        MakiseKurisuKeyword
  hi! link mkdListItem    MakiseKurisuKeyColor
  hi! link mkdRule        MakiseKurisuComment
  hi! link mkdUrl         MakiseKurisuLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        MakiseKurisuKeyColor
  hi! link markdownBold              MakiseKurisuParameterBold
  hi! link markdownBoldItalic        MakiseKurisuParameterBoldItalic
  hi! link markdownCodeBlock         MakiseKurisuClassName
  hi! link markdownCode              MakiseKurisuClassName
  hi! link markdownCodeDelimiter     MakiseKurisuClassName
  hi! link markdownH1                MakiseKurisuConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            MakiseKurisuStringColorItalic
  hi! link markdownLinkText          MakiseKurisuKeyword
  hi! link markdownListMarker        MakiseKurisuKeyColor
  hi! link markdownOrderedListMarker MakiseKurisuKeyColor
  hi! link markdownRule              MakiseKurisuComment
  hi! link markdownUrl               MakiseKurisuLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
