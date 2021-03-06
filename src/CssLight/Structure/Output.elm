module CssLight.Structure.Output exposing (prettyPrint)

import CssLight.Structure exposing (..)
import String


prettyPrint : Stylesheet -> String
prettyPrint { charset, imports, namespaces, declarations } =
    [ charsetToString charset
    , String.join "" (List.map importToString imports)
    , String.join "" (List.map namespaceToString namespaces)
    , String.join "" (List.map prettyPrintDeclaration declarations)
    ]
        |> List.filter (not << String.isEmpty)
        |> String.join ""


charsetToString : Maybe String -> String
charsetToString charset =
    charset
        |> Maybe.map (\str -> "@charset \"" ++ str ++ "\"")
        |> Maybe.withDefault ""


importToString : ( String, List MediaQuery ) -> String
importToString ( name, mediaQueries ) =
    -- TODO
    List.map (importMediaQueryToString name) mediaQueries
        |> String.join ""


importMediaQueryToString : String -> MediaQuery -> String
importMediaQueryToString name mediaQuery =
    "@import \"" ++ name ++ mediaQueryToString mediaQuery ++ "\""


namespaceToString : ( String, String ) -> String
namespaceToString ( prefix, str ) =
    "@namespace "
        ++ prefix
        ++ "\""
        ++ str
        ++ "\""


prettyPrintStyleBlock : String -> StyleBlock -> String
prettyPrintStyleBlock indentLevel (StyleBlock firstSelector otherSelectors properties) =
    let
        selectorStr =
            (firstSelector :: otherSelectors)
                |> List.map selectorToString
                |> String.join ","
    in
    String.join ""
        [ selectorStr
        , "{"
        , emitProperties properties
        , "}"
        ]


prettyPrintDeclaration : Declaration -> String
prettyPrintDeclaration decl =
    case decl of
        StyleBlockDeclaration styleBlock ->
            prettyPrintStyleBlock noIndent styleBlock

        MediaRule mediaQueries styleBlocks ->
            let
                blocks =
                    List.map (prettyPrintStyleBlock noIndent) styleBlocks
                        |> String.join ""

                query =
                    List.map mediaQueryToString mediaQueries
                        |> String.join ","
            in
            "@media " ++ query ++ "{" ++ blocks ++ "}"

        SupportsRule _ _ ->
            "TODO"

        DocumentRule _ _ _ _ _ ->
            "TODO"

        PageRule _ _ ->
            "TODO"

        FontFace _ ->
            "TODO"

        Keyframes { name, declaration } ->
            "@keyframes " ++ name ++ "{" ++ declaration ++ "}"

        Viewport _ ->
            "TODO"

        CounterStyle _ ->
            "TODO"

        FontFeatureValues _ ->
            "TODO"


mediaQueryToString : MediaQuery -> String
mediaQueryToString mediaQuery =
    let
        prefixWith : String -> MediaType -> List MediaExpression -> String
        prefixWith str mediaType expressions =
            str
                ++ " "
                ++ String.join " and "
                    (mediaTypeToString mediaType
                        :: List.map mediaExpressionToString expressions
                    )
    in
    case mediaQuery of
        AllQuery expressions ->
            expressions
                |> List.map mediaExpressionToString
                |> String.join " and "

        OnlyQuery mediaType expressions ->
            prefixWith "only" mediaType expressions

        NotQuery mediaType expressions ->
            prefixWith "not" mediaType expressions

        CustomQuery str ->
            str


mediaTypeToString : MediaType -> String
mediaTypeToString mediaType =
    case mediaType of
        Print ->
            "print"

        Screen ->
            "screen"

        Speech ->
            "speech"


mediaExpressionToString : MediaExpression -> String
mediaExpressionToString expression =
    "("
        ++ expression.feature
        ++ (expression.value
                |> Maybe.map ((++) ":")
                |> Maybe.withDefault ""
           )
        ++ ")"


simpleSelectorSequenceToString : SimpleSelectorSequence -> String
simpleSelectorSequenceToString simpleSelectorSequence =
    case simpleSelectorSequence of
        TypeSelectorSequence (TypeSelector str) repeatableSimpleSelectors ->
            (str :: List.map repeatableSimpleSelectorToString repeatableSimpleSelectors)
                |> String.join ""

        UniversalSelectorSequence repeatableSimpleSelectors ->
            if List.isEmpty repeatableSimpleSelectors then
                "*"

            else
                List.map repeatableSimpleSelectorToString repeatableSimpleSelectors
                    |> String.join ""

        CustomSelector str repeatableSimpleSelectors ->
            (str :: List.map repeatableSimpleSelectorToString repeatableSimpleSelectors)
                |> String.join ""


repeatableSimpleSelectorToString : RepeatableSimpleSelector -> String
repeatableSimpleSelectorToString repeatableSimpleSelector =
    case repeatableSimpleSelector of
        ClassSelector str ->
            "." ++ str

        IdSelector str ->
            "#" ++ str

        PseudoClassSelector str ->
            ":" ++ str

        AttributeSelector str ->
            "[" ++ str ++ "]"


selectorChainToString : ( SelectorCombinator, SimpleSelectorSequence ) -> String
selectorChainToString ( combinator, sequence ) =
    [ combinatorToString combinator
    , simpleSelectorSequenceToString sequence
    ]
        |> String.join " "


pseudoElementToString : PseudoElement -> String
pseudoElementToString (PseudoElement str) =
    "::" ++ str


selectorToString : Selector -> String
selectorToString (Selector simpleSelectorSequence chain pseudoElement) =
    let
        segments =
            simpleSelectorSequenceToString simpleSelectorSequence
                :: List.map selectorChainToString chain

        pseudoElementsString =
            String.join "" [ Maybe.withDefault "" (Maybe.map pseudoElementToString pseudoElement) ]
    in
    String.append
        (segments
            |> List.filter (not << String.isEmpty)
            |> String.join " "
        )
        pseudoElementsString


combinatorToString : SelectorCombinator -> String
combinatorToString combinator =
    case combinator of
        AdjacentSibling ->
            "+"

        GeneralSibling ->
            "~"

        Child ->
            ">"

        Descendant ->
            ""


emitProperty : Property -> String
emitProperty str =
    str


noIndent : String
noIndent =
    ""


emitProperties : List Property -> String
emitProperties properties =
    properties
        |> List.map emitProperty
        |> String.join ""
