# elm-css-light

This experimental project is a fork of [elm-css](https://github.com/rtfeldman/elm-css). `elm-css-light` makes it possible to write raw CSS string simply and directly in your Elm source code like:

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

You can also use Media queries, Pseudo Classes and Pseudo Elements inline. You don't need to `class` or `style` attribute any more.

## Usage

First, replace imports `Html`, `Html.Attributes` and `Html.Events` with of `CssLight.Html`, `CssLight.Html.Attributes` and `CssLight.Html.Events`. These modules are drop-in replacements of standard `Html.*` modules and it works as is. Then, you need to import `css_` attribute from `Html.Attributes` like `import Html.Attributes exposing (css_)`. it's totally ready. Now, You can use `css_` attribute takes raw CSS as string each elements!

For Pseudo Elements and Pseudo Class, you can use `css`, `style`, `media`, `pseudoClass` and `pseudoElement`. See the `example` for more information. Just use `elm reactor` to run the example.
