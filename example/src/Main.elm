module Main exposing (main)

import Browser exposing (sandbox)
import Browser.Navigation exposing (Key, load, pushUrl)
import CssLight.Html exposing (button, div, text)
import CssLight.Html.Attributes exposing (css, css_)
import CssLight.Html.Events exposing (onClick)
import CssLight.Style exposing (media, pseudoClass, style)
import Html exposing (Html)


type alias Flags =
    ()


type alias Model =
    Int


type Msg
    = Up
    | Down


init : Model
init =
    0


upDownButton : msg -> String -> CssLight.Html.Html msg
upDownButton msg label =
    button
        [ onClick msg
        , css_ """
            background-color: #dddddd;
            padding: 10px;
            border-radius: 3px;
            min-width: 160px;
            outline: none;
            border-style: none;
            font-size: 20px; """
        , css <| pseudoClass "hover" <| style """
            background-color: white; """
        ]
        [ text label ]


view : Model -> Html Msg
view model =
    CssLight.Html.toUnstyled <|
        div
            [ css_ """ 
                display: flex;
                justify-content: center;
                align-items: center;
                background-color: #0d9e6f;
                height: 100vh;
                width: 100vw; """
            ]
            [ div
                [ css_ """
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    gap: 20px; """
                , css <| media "(orientation: portrait)" <| style """
                    flex-direction: column; """
                ]
                [ upDownButton Up "Up"
                , div
                    [ css_ """
                        min-width: 100px;
                        text-align: center;
                        color: #ffffff;
                        font-size: 30px; """
                    ]
                    [ text <| String.fromInt model ]
                , upDownButton Down "Down"
                ]
            ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Up ->
            model + 1

        Down ->
            model - 1


main : Program Flags Model Msg
main =
    sandbox
        { init = init
        , view = view
        , update = update
        }
