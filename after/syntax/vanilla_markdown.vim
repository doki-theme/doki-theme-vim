if vanilla#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       VanillaParameterBold
  hi! link htmlBoldItalic VanillaParameterBoldItalic
  hi! link htmlH1         VanillaConstantsBold
  hi! link htmlItalic     VanillaStringColorItalic
  hi! link mkdBlockquote  VanillaStringColorItalic
  hi! link mkdBold        VanillaParameterBold
  hi! link mkdBoldItalic  VanillaParameterBoldItalic
  hi! link mkdCode        VanillaClassName
  hi! link mkdCodeEnd     VanillaClassName
  hi! link mkdCodeStart   VanillaClassName
  hi! link mkdHeading     VanillaConstantsBold
  hi! link mkdInlineUrl   VanillaLink
  hi! link mkdItalic      VanillaStringColorItalic
  hi! link mkdLink        VanillaKeyword
  hi! link mkdListItem    VanillaKeyColor
  hi! link mkdRule        VanillaComment
  hi! link mkdUrl         VanillaLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        VanillaKeyColor
  hi! link markdownBold              VanillaParameterBold
  hi! link markdownBoldItalic        VanillaParameterBoldItalic
  hi! link markdownCodeBlock         VanillaClassName
  hi! link markdownCode              VanillaClassName
  hi! link markdownCodeDelimiter     VanillaClassName
  hi! link markdownH1                VanillaConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            VanillaStringColorItalic
  hi! link markdownLinkText          VanillaKeyword
  hi! link markdownListMarker        VanillaKeyColor
  hi! link markdownOrderedListMarker VanillaKeyColor
  hi! link markdownRule              VanillaComment
  hi! link markdownUrl               VanillaLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
