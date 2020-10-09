if ishtar_dark#should_abort('markdown', 'mkd')
    finish
endif

if b:current_syntax ==# 'mkd'
" plasticboy/vim-markdown 
  hi! link htmlBold       IshtarDarkParameterBold
  hi! link htmlBoldItalic IshtarDarkParameterBoldItalic
  hi! link htmlH1         IshtarDarkConstantsBold
  hi! link htmlItalic     IshtarDarkStringColorItalic
  hi! link mkdBlockquote  IshtarDarkStringColorItalic
  hi! link mkdBold        IshtarDarkParameterBold
  hi! link mkdBoldItalic  IshtarDarkParameterBoldItalic
  hi! link mkdCode        IshtarDarkClassName
  hi! link mkdCodeEnd     IshtarDarkClassName
  hi! link mkdCodeStart   IshtarDarkClassName
  hi! link mkdHeading     IshtarDarkConstantsBold
  hi! link mkdInlineUrl   IshtarDarkLink
  hi! link mkdItalic      IshtarDarkStringColorItalic
  hi! link mkdLink        IshtarDarkKeyword
  hi! link mkdListItem    IshtarDarkKeyColor
  hi! link mkdRule        IshtarDarkComment
  hi! link mkdUrl         IshtarDarkLink
"}}}1
elseif b:current_syntax ==# 'markdown'
" Builtin: 
  hi! link markdownBlockquote        IshtarDarkKeyColor
  hi! link markdownBold              IshtarDarkParameterBold
  hi! link markdownBoldItalic        IshtarDarkParameterBoldItalic
  hi! link markdownCodeBlock         IshtarDarkClassName
  hi! link markdownCode              IshtarDarkClassName
  hi! link markdownCodeDelimiter     IshtarDarkClassName
  hi! link markdownH1                IshtarDarkConstantsBold
  hi! link markdownH2                markdownH1
  hi! link markdownH3                markdownH1
  hi! link markdownH4                markdownH1
  hi! link markdownH5                markdownH1
  hi! link markdownH6                markdownH1
  hi! link markdownHeadingDelimiter  markdownH1
  hi! link markdownHeadingRule       markdownH1
  hi! link markdownItalic            IshtarDarkStringColorItalic
  hi! link markdownLinkText          IshtarDarkKeyword
  hi! link markdownListMarker        IshtarDarkKeyColor
  hi! link markdownOrderedListMarker IshtarDarkKeyColor
  hi! link markdownRule              IshtarDarkComment
  hi! link markdownUrl               IshtarDarkLink
"}}}
endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
