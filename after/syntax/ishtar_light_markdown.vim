if ishtar_light#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       IshtarLightParameterBold
  hi! link htmlBoldItalic IshtarLightParameterBoldItalic
  hi! link htmlH1         IshtarLightConstantsBold
  hi! link htmlItalic     IshtarLightStringColorItalic
  hi! link mkdBlockquote  IshtarLightStringColorItalic
  hi! link mkdBold        IshtarLightParameterBold
  hi! link mkdBoldItalic  IshtarLightParameterBoldItalic
  hi! link mkdCode        IshtarLightClassName
  hi! link mkdCodeEnd     IshtarLightClassName
  hi! link mkdCodeStart   IshtarLightClassName
  hi! link mkdHeading     IshtarLightConstantsBold
  hi! link mkdInlineUrl   IshtarLightLink
  hi! link mkdItalic      IshtarLightStringColorItalic
  hi! link mkdLink        IshtarLightKeyword
  hi! link mkdListItem    IshtarLightKeyColor
  hi! link mkdRule        IshtarLightComment
  hi! link mkdUrl         IshtarLightLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        IshtarLightKeyColor
  hi! link markdownBold              IshtarLightParameterBold
  hi! link markdownBoldItalic        IshtarLightParameterBoldItalic
  hi! link markdownCodeBlock         IshtarLightClassName
  hi! link markdownCode              IshtarLightClassName
  hi! link markdownCodeDelimiter     IshtarLightClassName
  hi! link markdownH1                IshtarLightConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            IshtarLightStringColorItalic
  hi! link markdownLinkText          IshtarLightKeyword
  hi! link markdownListMarker        IshtarLightKeyColor
  hi! link markdownOrderedListMarker IshtarLightKeyColor
  hi! link markdownRule              IshtarLightComment
  hi! link markdownUrl               IshtarLightLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
