module CssLight.Style exposing (Style, batch, media, none, pseudoClass, pseudoElement, style)

{-|

@docs Style, batch, media, none, pseudoClass, pseudoElement, style

-}

import CssLight.Html
import CssLight.Preprocess as Preprocess exposing (Style)
import CssLight.Structure as Structure


{-| -}
type alias Style =
    Preprocess.Style


trim : String -> String
trim =
    String.lines
        >> List.map String.trim
        >> String.join ""


{-| -}
style : String -> Style
style =
    trim >> Preprocess.AppendProperty


{-| -}
batch : List Style -> Style
batch =
    Preprocess.ApplyStyles


{-| -}
none : Style
none =
    Preprocess.ApplyStyles []


{-| -}
pseudoClass : String -> Style -> Style
pseudoClass class sty =
    Preprocess.ExtendSelector (Structure.PseudoClassSelector class) [ sty ]


{-| -}
pseudoElement : String -> Style -> Style
pseudoElement element sty =
    Preprocess.WithPseudoElement (Structure.PseudoElement element) [ sty ]


{-| -}
media : String -> Style -> Style
media query sty =
    withMediaQuery [ query ] [ sty ]


{-| -}
withMediaQuery : List String -> List Style -> Style
withMediaQuery queries =
    queries
        |> List.map Structure.CustomQuery
        |> Preprocess.WithMedia
