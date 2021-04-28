# elm-css-light

This project is a fork of [elm-css](https://github.com/rtfeldman/elm-css).

`css_` is a shorthand of `css`.

```elm
coloredButton : msg -> String -> Html msg
coloredButton msg label =
    button
        [ onClick msg
        , css_ """
            background-color: #dddddd;
            padding: 10px;
            border-radius: 3px; """
        ]
        [ text label ]
```
