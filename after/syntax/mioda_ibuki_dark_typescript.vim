if mioda_ibuki_dark#should_abort('typescript', 'typescriptreact')
    finish
endif

" HerringtonDarkholme/yats.vim 

hi! link typescriptAliasDeclaration       Type
hi! link typescriptArrayMethod            Function
hi! link typescriptArrowFunc              Operator
hi! link typescriptArrowFuncArg           MiodaIbukiDarkParameterItalic
hi! link typescriptAssign                 Operator
hi! link typescriptBOMWindowProp          Constant
hi! link typescriptBinaryOp               Operator
hi! link typescriptBraces                 Delimiter
hi! link typescriptCall                   typescriptArrowFuncArg
hi! link typescriptClassHeritage          Type
hi! link typescriptClassName              Type
hi! link typescriptDateMethod             MiodaIbukiDarkKeyColor
hi! link typescriptDateStaticMethod       Function
hi! link typescriptDecorator              MiodaIbukiDarkClassNameItalic
hi! link typescriptDefaultParam           Operator
hi! link typescriptES6SetMethod           MiodaIbukiDarkKeyColor
hi! link typescriptEndColons              Delimiter
hi! link typescriptEnum                   Type
hi! link typescriptEnumKeyword            Keyword
hi! link typescriptFuncComma              Delimiter
hi! link typescriptFuncKeyword            Keyword
hi! link typescriptFuncType               MiodaIbukiDarkParameterItalic
hi! link typescriptFuncTypeArrow          Operator
hi! link typescriptGlobal                 Type
hi! link typescriptGlobalMethod           MiodaIbukiDarkKeyColor
hi! link typescriptGlobalObjects          Type
hi! link typescriptIdentifier             MiodaIbukiDarkConstantsItalic
hi! link typescriptInterfaceHeritage      Type
hi! link typescriptInterfaceName          Type
hi! link typescriptInterpolationDelimiter Keyword
hi! link typescriptKeywordOp              Keyword
hi! link typescriptLogicSymbols           Operator
hi! link typescriptMember                 Identifier
hi! link typescriptMemberOptionality      Special
hi! link typescriptObjectColon            Special
hi! link typescriptObjectLabel            Identifier
hi! link typescriptObjectSpread           Operator
hi! link typescriptOperator               Operator
hi! link typescriptParamImpl              MiodaIbukiDarkParameterItalic
hi! link typescriptParens                 Delimiter
hi! link typescriptPredefinedType         Type
hi! link typescriptRestOrSpread           Operator
hi! link typescriptTernaryOp              Operator
hi! link typescriptTypeAnnotation         Special
hi! link typescriptTypeCast               Operator
hi! link typescriptTypeParameter          MiodaIbukiDarkParameterItalic
hi! link typescriptTypeReference          Type
hi! link typescriptUnaryOp                Operator
hi! link typescriptVariable               Keyword

" }}}