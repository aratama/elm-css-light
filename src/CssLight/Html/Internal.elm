module CssLight.Html.Internal exposing (css)

import CssLight.Preprocess exposing (Style)
import CssLight.VirtualDom
import Json.Encode as Json
import VirtualDom


css : List Style -> CssLight.VirtualDom.Attribute msg
css styles =
    let
        classname =
            CssLight.VirtualDom.getClassname styles

        classProperty =
            VirtualDom.property "className" (Json.string classname)
    in
    CssLight.VirtualDom.Attribute classProperty styles classname
