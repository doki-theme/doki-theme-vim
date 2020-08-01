if kanna#should_abort('typescript', 'typescriptreact')
    finish
endif

" HerringtonDarkholme/yats.vim 

hi! link typescriptAliasDeclaration       Type
hi! link typescriptArrayMethod            Function
hi! link typescriptArrowFunc              Operator
hi! link typescriptArrowFuncArg           KannaParameterItalic
hi! link typescriptAssign                 Operator
hi! link typescriptBOMWindowProp          Constant
hi! link typescriptBinaryOp               Operator
hi! link typescriptBraces                 Delimiter
hi! link typescriptCall                   typescriptArrowFuncArg
hi! link typescriptClassHeritage          Type
hi! link typescriptClassName              Type
hi! link typescriptDateMethod             KannaKeyColor
hi! link typescriptDateStaticMethod       Function
hi! link typescriptDecorator              KannaClassNameItalic
hi! link typescriptDefaultParam           Operator
hi! link typescriptES6SetMethod           KannaKeyColor
hi! link typescriptEndColons              Delimiter
hi! link typescriptEnum                   Type
hi! link typescriptEnumKeyword            Keyword
hi! link typescriptFuncComma              Delimiter
hi! link typescriptFuncKeyword            Keyword
hi! link typescriptFuncType               KannaParameterItalic
hi! link typescriptFuncTypeArrow          Operator
hi! link typescriptGlobal                 Type
hi! link typescriptGlobalMethod           KannaKeyColor
hi! link typescriptGlobalObjects          Type
hi! link typescriptIdentifier             KannaConstantsItalic
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
hi! link typescriptParamImpl              KannaParameterItalic
hi! link typescriptParens                 Delimiter
hi! link typescriptPredefinedType         Type
hi! link typescriptRestOrSpread           Operator
hi! link typescriptTernaryOp              Operator
hi! link typescriptTypeAnnotation         Special
hi! link typescriptTypeCast               Operator
hi! link typescriptTypeParameter          KannaParameterItalic
hi! link typescriptTypeReference          Type
hi! link typescriptUnaryOp                Operator
hi! link typescriptVariable               Keyword

" }}}
