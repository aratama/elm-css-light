module CssLight.Svg.Internal exposing (css, svgNamespace)

import CssLight.Preprocess exposing (Style)
import CssLight.VirtualDom
import Json.Encode as Json
import VirtualDom


css : List Style -> CssLight.VirtualDom.Attribute msg
css styles =
    let
        classname =
            CssLight.VirtualDom.getClassname styles

        classAttribute =
            VirtualDom.attribute "class" classname
    in
    CssLight.VirtualDom.Attribute classAttribute styles classname


svgNamespace : CssLight.VirtualDom.Attribute msg
svgNamespace =
    CssLight.VirtualDom.property "namespace"
        (Json.string "http://www.w3.org/2000/svg")
