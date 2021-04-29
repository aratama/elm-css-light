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

This is a **Scoped** CSS styles of the element. Furthermore you can also use Media queries, Pseudo Classes and Pseudo Elements inline. You don't need `class` or `style` attribute any more.

## Usage

First, replace your imports `Html`, `Html.Attributes` and `Html.Events` with of `CssLight.Html`, `CssLight.Html.Attributes` and `CssLight.Html.Events` in your Elm code respectively. These modules are drop-in replacements of hte standard `Html.*` modules and it works as is. Then, you need to import `css_` attribute from `Html.Attributes` like `import Html.Attributes exposing (css_)`. Now, it's totally ready. You can use `css_` attribute takes raw CSS as string for each elements!

For Pseudo Elements and Pseudo Class, you can combine `css`, `style`, `media`, `pseudoClass` and `pseudoElement`. `css_` is just a shorthand of `css` and these functions. See the `example` directory for more information. Just use `elm reactor` to run the example.
