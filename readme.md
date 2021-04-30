# elm-css-light

This experimental project is a fork of [elm-css](https://github.com/rtfeldman/elm-css). `elm-css-light` makes it possible to write raw CSS string simply and directly in your Elm source code as follows:

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

This is **scoped** CSS styles of the element. Furthermore, you can also use Media queries, Pseudo Classes and Pseudo Elements in the attribute list:

```elm
div
    [ css <| media "(orientation: portrait)" <| style """
        flex-direction: column; """
    ] [ ... ]
```

You don't need `class` or `style` attributes any more, but you can still use CSS classes and combine it with external `.css` files if you need.

##### Pros

- You can easily copy-and-paste CSS snipetts.
- You can use most of syntax and features of regular CSS intuitively.
- It doesn't separate CSS style from your application codes. You can find style definitions of the element instantly when you are coding. (This and the following points are same about `elm-css`)
- Originally `style` attribute can't include media queries, pseudo elements and pseudo class. You can use them in `css_` attribute of `elm-css-light`.
- You don't need to concern about `class` name. Class name conflictions and unintentional style overrides will never happen.

##### Cons

- You can't hightlight these style string (for now). You can't also format these styles with formatter.
- You can't find corresponding codes via DevTools easily when you are debugging. It's because the class names are automatically generated in runtime.

## Usage

First, replace your imports `Html`, `Html.Attributes` and `Html.Events` with of `CssLight.Html`, `CssLight.Html.Attributes` and `CssLight.Html.Events` in your Elm code respectively. These modules are drop-in replacements of hte standard `Html.*` modules and it works as is. Then, you need to import `css_` attribute from `Html.Attributes` like `import Html.Attributes exposing (css_)`. Now, it's totally ready. You can use `css_` attribute takes raw CSS as string for each elements!

For Pseudo Elements and Pseudo Class, you can use `css`, `style`, `media`, `pseudoClass` and `pseudoElement` functions. Actually, `css_` is just a shorthand of `css` and these functions. You can also use `pseudoClass_` and `pseudoElement_` as shorthands. See the `example` directory for more information. Just use `elm reactor` to run the example.

Uunfortunately, elm-css-light is not in Elm Packages yet. Please do vendering (copy and past elm-css-light in your project) to use it. For the API reference, run `npx elm make src/Main.elm --docs=docs.json` and use [elm-doc-preview](https://github.com/dmy/elm-doc-preview). I will upload on Elm Packages if it's proven to be useful :)
