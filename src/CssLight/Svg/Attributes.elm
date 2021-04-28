module CssLight.Svg.Attributes exposing
    ( css, fromUnstyled
    , accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
    , amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
    , azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
    , capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
    , d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
    , elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
    , format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
    , gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
    , ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
    , kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
    , limitingConeAngle, local, markerHeight, markerUnits, markerWidth
    , maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
    , name, numOctaves, offset, operator, order, orient, orientation, origin
    , overlinePosition, overlineThickness, panose1, path, pathLength
    , patternContentUnits, patternTransform, patternUnits, pointOrder, points
    , pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
    , primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
    , repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
    , rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
    , speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
    , strikethroughPosition, strikethroughThickness, string, style, surfaceScale
    , systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
    , transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
    , unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
    , values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
    , width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
    , xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
    , xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan
    , alignmentBaseline, baselineShift, clipPath, clipRule, clip
    , colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
    , color, cursor, direction, display, dominantBaseline, enableBackground
    , fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
    , fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
    , glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
    , kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
    , mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
    , stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
    , strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
    , textAnchor, textDecoration, textRendering, unicodeBidi, visibility
    , wordSpacing, writingMode
    )

{-| Drop-in replacement for the `Svg.Attributes` module from the `elm-lang/svg` package.
The only functions added are `css`, and `fromUnstyled`:

@docs css, fromUnstyled


# Regular attributes

@docs accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
@docs amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
@docs azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
@docs capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
@docs d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
@docs elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
@docs format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
@docs gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
@docs ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
@docs kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
@docs limitingConeAngle, local, markerHeight, markerUnits, markerWidth
@docs maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
@docs name, numOctaves, offset, operator, order, orient, orientation, origin
@docs overlinePosition, overlineThickness, panose1, path, pathLength
@docs patternContentUnits, patternTransform, patternUnits, pointOrder, points
@docs pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
@docs primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
@docs repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
@docs rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
@docs speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
@docs strikethroughPosition, strikethroughThickness, string, style, surfaceScale
@docs systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
@docs transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
@docs unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
@docs values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
@docs width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
@docs xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
@docs xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan


# Presentation attributes

@docs alignmentBaseline, baselineShift, clipPath, clipRule, clip
@docs colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
@docs color, cursor, direction, display, dominantBaseline, enableBackground
@docs fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
@docs fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
@docs glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
@docs kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
@docs mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
@docs stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
@docs strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
@docs textAnchor, textDecoration, textRendering, unicodeBidi, visibility
@docs wordSpacing, writingMode

-}

import CssLight.Preprocess exposing (Style)
import CssLight.Svg exposing (Attribute)
import CssLight.Svg.Internal as Internal
import CssLight.VirtualDom
import VirtualDom


{-| -}
fromUnstyled : VirtualDom.Attribute msg -> Attribute msg
fromUnstyled =
    CssLight.VirtualDom.unstyledAttribute


{-| Apply styles to an element.

See the [`Css` module documentation](http://package.elm-lang.org/packages/rtfeldman/elm-css/latest/Css) for an overview of how to use this function.

-}
css : List Style -> Attribute msg
css =
    Internal.css



-- REGULAR ATTRIBUTES


{-| -}
accentHeight : String -> Attribute msg
accentHeight =
    CssLight.VirtualDom.attribute "accent-height"


{-| -}
accelerate : String -> Attribute msg
accelerate =
    CssLight.VirtualDom.attribute "accelerate"


{-| -}
accumulate : String -> Attribute msg
accumulate =
    CssLight.VirtualDom.attribute "accumulate"


{-| -}
additive : String -> Attribute msg
additive =
    CssLight.VirtualDom.attribute "additive"


{-| -}
alphabetic : String -> Attribute msg
alphabetic =
    CssLight.VirtualDom.attribute "alphabetic"


{-| -}
allowReorder : String -> Attribute msg
allowReorder =
    CssLight.VirtualDom.attribute "allowReorder"


{-| -}
amplitude : String -> Attribute msg
amplitude =
    CssLight.VirtualDom.attribute "amplitude"


{-| -}
arabicForm : String -> Attribute msg
arabicForm =
    CssLight.VirtualDom.attribute "arabic-form"


{-| -}
ascent : String -> Attribute msg
ascent =
    CssLight.VirtualDom.attribute "ascent"


{-| -}
attributeName : String -> Attribute msg
attributeName =
    CssLight.VirtualDom.attribute "attributeName"


{-| -}
attributeType : String -> Attribute msg
attributeType =
    CssLight.VirtualDom.attribute "attributeType"


{-| -}
autoReverse : String -> Attribute msg
autoReverse =
    CssLight.VirtualDom.attribute "autoReverse"


{-| -}
azimuth : String -> Attribute msg
azimuth =
    CssLight.VirtualDom.attribute "azimuth"


{-| -}
baseFrequency : String -> Attribute msg
baseFrequency =
    CssLight.VirtualDom.attribute "baseFrequency"


{-| -}
baseProfile : String -> Attribute msg
baseProfile =
    CssLight.VirtualDom.attribute "baseProfile"


{-| -}
bbox : String -> Attribute msg
bbox =
    CssLight.VirtualDom.attribute "bbox"


{-| -}
begin : String -> Attribute msg
begin =
    CssLight.VirtualDom.attribute "begin"


{-| -}
bias : String -> Attribute msg
bias =
    CssLight.VirtualDom.attribute "bias"


{-| -}
by : String -> Attribute msg
by value =
    CssLight.VirtualDom.attribute "by" value


{-| -}
calcMode : String -> Attribute msg
calcMode =
    CssLight.VirtualDom.attribute "calcMode"


{-| -}
capHeight : String -> Attribute msg
capHeight =
    CssLight.VirtualDom.attribute "cap-height"


{-| -}
class : String -> Attribute msg
class =
    CssLight.VirtualDom.attribute "class"


{-| -}
clipPathUnits : String -> Attribute msg
clipPathUnits =
    CssLight.VirtualDom.attribute "clipPathUnits"


{-| -}
contentScriptType : String -> Attribute msg
contentScriptType =
    CssLight.VirtualDom.attribute "contentScriptType"


{-| -}
contentStyleType : String -> Attribute msg
contentStyleType =
    CssLight.VirtualDom.attribute "contentStyleType"


{-| -}
cx : String -> Attribute msg
cx =
    CssLight.VirtualDom.attribute "cx"


{-| -}
cy : String -> Attribute msg
cy =
    CssLight.VirtualDom.attribute "cy"


{-| -}
d : String -> Attribute msg
d =
    CssLight.VirtualDom.attribute "d"


{-| -}
decelerate : String -> Attribute msg
decelerate =
    CssLight.VirtualDom.attribute "decelerate"


{-| -}
descent : String -> Attribute msg
descent =
    CssLight.VirtualDom.attribute "descent"


{-| -}
diffuseConstant : String -> Attribute msg
diffuseConstant =
    CssLight.VirtualDom.attribute "diffuseConstant"


{-| -}
divisor : String -> Attribute msg
divisor =
    CssLight.VirtualDom.attribute "divisor"


{-| -}
dur : String -> Attribute msg
dur =
    CssLight.VirtualDom.attribute "dur"


{-| -}
dx : String -> Attribute msg
dx =
    CssLight.VirtualDom.attribute "dx"


{-| -}
dy : String -> Attribute msg
dy =
    CssLight.VirtualDom.attribute "dy"


{-| -}
edgeMode : String -> Attribute msg
edgeMode =
    CssLight.VirtualDom.attribute "edgeMode"


{-| -}
elevation : String -> Attribute msg
elevation =
    CssLight.VirtualDom.attribute "elevation"


{-| -}
end : String -> Attribute msg
end =
    CssLight.VirtualDom.attribute "end"


{-| -}
exponent : String -> Attribute msg
exponent =
    CssLight.VirtualDom.attribute "exponent"


{-| -}
externalResourcesRequired : String -> Attribute msg
externalResourcesRequired =
    CssLight.VirtualDom.attribute "externalResourcesRequired"


{-| -}
filterRes : String -> Attribute msg
filterRes =
    CssLight.VirtualDom.attribute "filterRes"


{-| -}
filterUnits : String -> Attribute msg
filterUnits =
    CssLight.VirtualDom.attribute "filterUnits"


{-| -}
format : String -> Attribute msg
format =
    CssLight.VirtualDom.attribute "format"


{-| -}
from : String -> Attribute msg
from value =
    CssLight.VirtualDom.attribute "from" value


{-| -}
fx : String -> Attribute msg
fx =
    CssLight.VirtualDom.attribute "fx"


{-| -}
fy : String -> Attribute msg
fy =
    CssLight.VirtualDom.attribute "fy"


{-| -}
g1 : String -> Attribute msg
g1 =
    CssLight.VirtualDom.attribute "g1"


{-| -}
g2 : String -> Attribute msg
g2 =
    CssLight.VirtualDom.attribute "g2"


{-| -}
glyphName : String -> Attribute msg
glyphName =
    CssLight.VirtualDom.attribute "glyph-name"


{-| -}
glyphRef : String -> Attribute msg
glyphRef =
    CssLight.VirtualDom.attribute "glyphRef"


{-| -}
gradientTransform : String -> Attribute msg
gradientTransform =
    CssLight.VirtualDom.attribute "gradientTransform"


{-| -}
gradientUnits : String -> Attribute msg
gradientUnits =
    CssLight.VirtualDom.attribute "gradientUnits"


{-| -}
hanging : String -> Attribute msg
hanging =
    CssLight.VirtualDom.attribute "hanging"


{-| -}
height : String -> Attribute msg
height =
    CssLight.VirtualDom.attribute "height"


{-| -}
horizAdvX : String -> Attribute msg
horizAdvX =
    CssLight.VirtualDom.attribute "horiz-adv-x"


{-| -}
horizOriginX : String -> Attribute msg
horizOriginX =
    CssLight.VirtualDom.attribute "horiz-origin-x"


{-| -}
horizOriginY : String -> Attribute msg
horizOriginY =
    CssLight.VirtualDom.attribute "horiz-origin-y"


{-| -}
id : String -> Attribute msg
id =
    CssLight.VirtualDom.attribute "id"


{-| -}
ideographic : String -> Attribute msg
ideographic =
    CssLight.VirtualDom.attribute "ideographic"


{-| -}
in_ : String -> Attribute msg
in_ =
    CssLight.VirtualDom.attribute "in"


{-| -}
in2 : String -> Attribute msg
in2 =
    CssLight.VirtualDom.attribute "in2"


{-| -}
intercept : String -> Attribute msg
intercept =
    CssLight.VirtualDom.attribute "intercept"


{-| -}
k : String -> Attribute msg
k =
    CssLight.VirtualDom.attribute "k"


{-| -}
k1 : String -> Attribute msg
k1 =
    CssLight.VirtualDom.attribute "k1"


{-| -}
k2 : String -> Attribute msg
k2 =
    CssLight.VirtualDom.attribute "k2"


{-| -}
k3 : String -> Attribute msg
k3 =
    CssLight.VirtualDom.attribute "k3"


{-| -}
k4 : String -> Attribute msg
k4 =
    CssLight.VirtualDom.attribute "k4"


{-| -}
kernelMatrix : String -> Attribute msg
kernelMatrix =
    CssLight.VirtualDom.attribute "kernelMatrix"


{-| -}
kernelUnitLength : String -> Attribute msg
kernelUnitLength =
    CssLight.VirtualDom.attribute "kernelUnitLength"


{-| -}
keyPoints : String -> Attribute msg
keyPoints =
    CssLight.VirtualDom.attribute "keyPoints"


{-| -}
keySplines : String -> Attribute msg
keySplines =
    CssLight.VirtualDom.attribute "keySplines"


{-| -}
keyTimes : String -> Attribute msg
keyTimes =
    CssLight.VirtualDom.attribute "keyTimes"


{-| -}
lang : String -> Attribute msg
lang =
    CssLight.VirtualDom.attribute "lang"


{-| -}
lengthAdjust : String -> Attribute msg
lengthAdjust =
    CssLight.VirtualDom.attribute "lengthAdjust"


{-| -}
limitingConeAngle : String -> Attribute msg
limitingConeAngle =
    CssLight.VirtualDom.attribute "limitingConeAngle"


{-| -}
local : String -> Attribute msg
local =
    CssLight.VirtualDom.attribute "local"


{-| -}
markerHeight : String -> Attribute msg
markerHeight =
    CssLight.VirtualDom.attribute "markerHeight"


{-| -}
markerUnits : String -> Attribute msg
markerUnits =
    CssLight.VirtualDom.attribute "markerUnits"


{-| -}
markerWidth : String -> Attribute msg
markerWidth =
    CssLight.VirtualDom.attribute "markerWidth"


{-| -}
maskContentUnits : String -> Attribute msg
maskContentUnits =
    CssLight.VirtualDom.attribute "maskContentUnits"


{-| -}
maskUnits : String -> Attribute msg
maskUnits =
    CssLight.VirtualDom.attribute "maskUnits"


{-| -}
mathematical : String -> Attribute msg
mathematical =
    CssLight.VirtualDom.attribute "mathematical"


{-| -}
max : String -> Attribute msg
max =
    CssLight.VirtualDom.attribute "max"


{-| -}
media : String -> Attribute msg
media =
    CssLight.VirtualDom.attribute "media"


{-| -}
method : String -> Attribute msg
method =
    CssLight.VirtualDom.attribute "method"


{-| -}
min : String -> Attribute msg
min =
    CssLight.VirtualDom.attribute "min"


{-| -}
mode : String -> Attribute msg
mode =
    CssLight.VirtualDom.attribute "mode"


{-| -}
name : String -> Attribute msg
name =
    CssLight.VirtualDom.attribute "name"


{-| -}
numOctaves : String -> Attribute msg
numOctaves =
    CssLight.VirtualDom.attribute "numOctaves"


{-| -}
offset : String -> Attribute msg
offset =
    CssLight.VirtualDom.attribute "offset"


{-| -}
operator : String -> Attribute msg
operator =
    CssLight.VirtualDom.attribute "operator"


{-| -}
order : String -> Attribute msg
order =
    CssLight.VirtualDom.attribute "order"


{-| -}
orient : String -> Attribute msg
orient =
    CssLight.VirtualDom.attribute "orient"


{-| -}
orientation : String -> Attribute msg
orientation =
    CssLight.VirtualDom.attribute "orientation"


{-| -}
origin : String -> Attribute msg
origin =
    CssLight.VirtualDom.attribute "origin"


{-| -}
overlinePosition : String -> Attribute msg
overlinePosition =
    CssLight.VirtualDom.attribute "overline-position"


{-| -}
overlineThickness : String -> Attribute msg
overlineThickness =
    CssLight.VirtualDom.attribute "overline-thickness"


{-| -}
panose1 : String -> Attribute msg
panose1 =
    CssLight.VirtualDom.attribute "panose-1"


{-| -}
path : String -> Attribute msg
path =
    CssLight.VirtualDom.attribute "path"


{-| -}
pathLength : String -> Attribute msg
pathLength =
    CssLight.VirtualDom.attribute "pathLength"


{-| -}
patternContentUnits : String -> Attribute msg
patternContentUnits =
    CssLight.VirtualDom.attribute "patternContentUnits"


{-| -}
patternTransform : String -> Attribute msg
patternTransform =
    CssLight.VirtualDom.attribute "patternTransform"


{-| -}
patternUnits : String -> Attribute msg
patternUnits =
    CssLight.VirtualDom.attribute "patternUnits"


{-| -}
pointOrder : String -> Attribute msg
pointOrder =
    CssLight.VirtualDom.attribute "point-order"


{-| -}
points : String -> Attribute msg
points =
    CssLight.VirtualDom.attribute "points"


{-| -}
pointsAtX : String -> Attribute msg
pointsAtX =
    CssLight.VirtualDom.attribute "pointsAtX"


{-| -}
pointsAtY : String -> Attribute msg
pointsAtY =
    CssLight.VirtualDom.attribute "pointsAtY"


{-| -}
pointsAtZ : String -> Attribute msg
pointsAtZ =
    CssLight.VirtualDom.attribute "pointsAtZ"


{-| -}
preserveAlpha : String -> Attribute msg
preserveAlpha =
    CssLight.VirtualDom.attribute "preserveAlpha"


{-| -}
preserveAspectRatio : String -> Attribute msg
preserveAspectRatio =
    CssLight.VirtualDom.attribute "preserveAspectRatio"


{-| -}
primitiveUnits : String -> Attribute msg
primitiveUnits =
    CssLight.VirtualDom.attribute "primitiveUnits"


{-| -}
r : String -> Attribute msg
r =
    CssLight.VirtualDom.attribute "r"


{-| -}
radius : String -> Attribute msg
radius =
    CssLight.VirtualDom.attribute "radius"


{-| -}
refX : String -> Attribute msg
refX =
    CssLight.VirtualDom.attribute "refX"


{-| -}
refY : String -> Attribute msg
refY =
    CssLight.VirtualDom.attribute "refY"


{-| -}
renderingIntent : String -> Attribute msg
renderingIntent =
    CssLight.VirtualDom.attribute "rendering-intent"


{-| -}
repeatCount : String -> Attribute msg
repeatCount =
    CssLight.VirtualDom.attribute "repeatCount"


{-| -}
repeatDur : String -> Attribute msg
repeatDur =
    CssLight.VirtualDom.attribute "repeatDur"


{-| -}
requiredExtensions : String -> Attribute msg
requiredExtensions =
    CssLight.VirtualDom.attribute "requiredExtensions"


{-| -}
requiredFeatures : String -> Attribute msg
requiredFeatures =
    CssLight.VirtualDom.attribute "requiredFeatures"


{-| -}
restart : String -> Attribute msg
restart =
    CssLight.VirtualDom.attribute "restart"


{-| -}
result : String -> Attribute msg
result =
    CssLight.VirtualDom.attribute "result"


{-| -}
rotate : String -> Attribute msg
rotate =
    CssLight.VirtualDom.attribute "rotate"


{-| -}
rx : String -> Attribute msg
rx =
    CssLight.VirtualDom.attribute "rx"


{-| -}
ry : String -> Attribute msg
ry =
    CssLight.VirtualDom.attribute "ry"


{-| -}
scale : String -> Attribute msg
scale =
    CssLight.VirtualDom.attribute "scale"


{-| -}
seed : String -> Attribute msg
seed =
    CssLight.VirtualDom.attribute "seed"


{-| -}
slope : String -> Attribute msg
slope =
    CssLight.VirtualDom.attribute "slope"


{-| -}
spacing : String -> Attribute msg
spacing =
    CssLight.VirtualDom.attribute "spacing"


{-| -}
specularConstant : String -> Attribute msg
specularConstant =
    CssLight.VirtualDom.attribute "specularConstant"


{-| -}
specularExponent : String -> Attribute msg
specularExponent =
    CssLight.VirtualDom.attribute "specularExponent"


{-| -}
speed : String -> Attribute msg
speed =
    CssLight.VirtualDom.attribute "speed"


{-| -}
spreadMethod : String -> Attribute msg
spreadMethod =
    CssLight.VirtualDom.attribute "spreadMethod"


{-| -}
startOffset : String -> Attribute msg
startOffset =
    CssLight.VirtualDom.attribute "startOffset"


{-| -}
stdDeviation : String -> Attribute msg
stdDeviation =
    CssLight.VirtualDom.attribute "stdDeviation"


{-| -}
stemh : String -> Attribute msg
stemh =
    CssLight.VirtualDom.attribute "stemh"


{-| -}
stemv : String -> Attribute msg
stemv =
    CssLight.VirtualDom.attribute "stemv"


{-| -}
stitchTiles : String -> Attribute msg
stitchTiles =
    CssLight.VirtualDom.attribute "stitchTiles"


{-| -}
strikethroughPosition : String -> Attribute msg
strikethroughPosition =
    CssLight.VirtualDom.attribute "strikethrough-position"


{-| -}
strikethroughThickness : String -> Attribute msg
strikethroughThickness =
    CssLight.VirtualDom.attribute "strikethrough-thickness"


{-| -}
string : String -> Attribute msg
string =
    CssLight.VirtualDom.attribute "string"


{-| -}
style : String -> Attribute msg
style =
    CssLight.VirtualDom.attribute "style"


{-| -}
surfaceScale : String -> Attribute msg
surfaceScale =
    CssLight.VirtualDom.attribute "surfaceScale"


{-| -}
systemLanguage : String -> Attribute msg
systemLanguage =
    CssLight.VirtualDom.attribute "systemLanguage"


{-| -}
tableValues : String -> Attribute msg
tableValues =
    CssLight.VirtualDom.attribute "tableValues"


{-| -}
target : String -> Attribute msg
target =
    CssLight.VirtualDom.attribute "target"


{-| -}
targetX : String -> Attribute msg
targetX =
    CssLight.VirtualDom.attribute "targetX"


{-| -}
targetY : String -> Attribute msg
targetY =
    CssLight.VirtualDom.attribute "targetY"


{-| -}
textLength : String -> Attribute msg
textLength =
    CssLight.VirtualDom.attribute "textLength"


{-| -}
title : String -> Attribute msg
title =
    CssLight.VirtualDom.attribute "title"


{-| -}
to : String -> Attribute msg
to value =
    CssLight.VirtualDom.attribute "to" value


{-| -}
transform : String -> Attribute msg
transform =
    CssLight.VirtualDom.attribute "transform"


{-| -}
type_ : String -> Attribute msg
type_ =
    CssLight.VirtualDom.attribute "type"


{-| -}
u1 : String -> Attribute msg
u1 =
    CssLight.VirtualDom.attribute "u1"


{-| -}
u2 : String -> Attribute msg
u2 =
    CssLight.VirtualDom.attribute "u2"


{-| -}
underlinePosition : String -> Attribute msg
underlinePosition =
    CssLight.VirtualDom.attribute "underline-position"


{-| -}
underlineThickness : String -> Attribute msg
underlineThickness =
    CssLight.VirtualDom.attribute "underline-thickness"


{-| -}
unicode : String -> Attribute msg
unicode =
    CssLight.VirtualDom.attribute "unicode"


{-| -}
unicodeRange : String -> Attribute msg
unicodeRange =
    CssLight.VirtualDom.attribute "unicode-range"


{-| -}
unitsPerEm : String -> Attribute msg
unitsPerEm =
    CssLight.VirtualDom.attribute "units-per-em"


{-| -}
vAlphabetic : String -> Attribute msg
vAlphabetic =
    CssLight.VirtualDom.attribute "v-alphabetic"


{-| -}
vHanging : String -> Attribute msg
vHanging =
    CssLight.VirtualDom.attribute "v-hanging"


{-| -}
vIdeographic : String -> Attribute msg
vIdeographic =
    CssLight.VirtualDom.attribute "v-ideographic"


{-| -}
vMathematical : String -> Attribute msg
vMathematical =
    CssLight.VirtualDom.attribute "v-mathematical"


{-| -}
values : String -> Attribute msg
values value =
    CssLight.VirtualDom.attribute "values" value


{-| -}
version : String -> Attribute msg
version =
    CssLight.VirtualDom.attribute "version"


{-| -}
vertAdvY : String -> Attribute msg
vertAdvY =
    CssLight.VirtualDom.attribute "vert-adv-y"


{-| -}
vertOriginX : String -> Attribute msg
vertOriginX =
    CssLight.VirtualDom.attribute "vert-origin-x"


{-| -}
vertOriginY : String -> Attribute msg
vertOriginY =
    CssLight.VirtualDom.attribute "vert-origin-y"


{-| -}
viewBox : String -> Attribute msg
viewBox =
    CssLight.VirtualDom.attribute "viewBox"


{-| -}
viewTarget : String -> Attribute msg
viewTarget =
    CssLight.VirtualDom.attribute "viewTarget"


{-| -}
width : String -> Attribute msg
width =
    CssLight.VirtualDom.attribute "width"


{-| -}
widths : String -> Attribute msg
widths =
    CssLight.VirtualDom.attribute "widths"


{-| -}
x : String -> Attribute msg
x =
    CssLight.VirtualDom.attribute "x"


{-| -}
xHeight : String -> Attribute msg
xHeight =
    CssLight.VirtualDom.attribute "x-height"


{-| -}
x1 : String -> Attribute msg
x1 =
    CssLight.VirtualDom.attribute "x1"


{-| -}
x2 : String -> Attribute msg
x2 =
    CssLight.VirtualDom.attribute "x2"


{-| -}
xChannelSelector : String -> Attribute msg
xChannelSelector =
    CssLight.VirtualDom.attribute "xChannelSelector"


{-| -}
xlinkActuate : String -> Attribute msg
xlinkActuate =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-| -}
xlinkArcrole : String -> Attribute msg
xlinkArcrole =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-| -}
xlinkHref : String -> Attribute msg
xlinkHref value =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:href" value


{-| -}
xlinkRole : String -> Attribute msg
xlinkRole =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-| -}
xlinkShow : String -> Attribute msg
xlinkShow =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-| -}
xlinkTitle : String -> Attribute msg
xlinkTitle =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-| -}
xlinkType : String -> Attribute msg
xlinkType =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-| -}
xmlBase : String -> Attribute msg
xmlBase =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-| -}
xmlLang : String -> Attribute msg
xmlLang =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-| -}
xmlSpace : String -> Attribute msg
xmlSpace =
    CssLight.VirtualDom.attributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-| -}
y : String -> Attribute msg
y =
    CssLight.VirtualDom.attribute "y"


{-| -}
y1 : String -> Attribute msg
y1 =
    CssLight.VirtualDom.attribute "y1"


{-| -}
y2 : String -> Attribute msg
y2 =
    CssLight.VirtualDom.attribute "y2"


{-| -}
yChannelSelector : String -> Attribute msg
yChannelSelector =
    CssLight.VirtualDom.attribute "yChannelSelector"


{-| -}
z : String -> Attribute msg
z =
    CssLight.VirtualDom.attribute "z"


{-| -}
zoomAndPan : String -> Attribute msg
zoomAndPan =
    CssLight.VirtualDom.attribute "zoomAndPan"



-- PRESENTATION ATTRIBUTES


{-| -}
alignmentBaseline : String -> Attribute msg
alignmentBaseline =
    CssLight.VirtualDom.attribute "alignment-baseline"


{-| -}
baselineShift : String -> Attribute msg
baselineShift =
    CssLight.VirtualDom.attribute "baseline-shift"


{-| -}
clipPath : String -> Attribute msg
clipPath =
    CssLight.VirtualDom.attribute "clip-path"


{-| -}
clipRule : String -> Attribute msg
clipRule =
    CssLight.VirtualDom.attribute "clip-rule"


{-| -}
clip : String -> Attribute msg
clip =
    CssLight.VirtualDom.attribute "clip"


{-| -}
colorInterpolationFilters : String -> Attribute msg
colorInterpolationFilters =
    CssLight.VirtualDom.attribute "color-interpolation-filters"


{-| -}
colorInterpolation : String -> Attribute msg
colorInterpolation =
    CssLight.VirtualDom.attribute "color-interpolation"


{-| -}
colorProfile : String -> Attribute msg
colorProfile =
    CssLight.VirtualDom.attribute "color-profile"


{-| -}
colorRendering : String -> Attribute msg
colorRendering =
    CssLight.VirtualDom.attribute "color-rendering"


{-| -}
color : String -> Attribute msg
color =
    CssLight.VirtualDom.attribute "color"


{-| -}
cursor : String -> Attribute msg
cursor =
    CssLight.VirtualDom.attribute "cursor"


{-| -}
direction : String -> Attribute msg
direction =
    CssLight.VirtualDom.attribute "direction"


{-| -}
display : String -> Attribute msg
display =
    CssLight.VirtualDom.attribute "display"


{-| -}
dominantBaseline : String -> Attribute msg
dominantBaseline =
    CssLight.VirtualDom.attribute "dominant-baseline"


{-| -}
enableBackground : String -> Attribute msg
enableBackground =
    CssLight.VirtualDom.attribute "enable-background"


{-| -}
fillOpacity : String -> Attribute msg
fillOpacity =
    CssLight.VirtualDom.attribute "fill-opacity"


{-| -}
fillRule : String -> Attribute msg
fillRule =
    CssLight.VirtualDom.attribute "fill-rule"


{-| -}
fill : String -> Attribute msg
fill =
    CssLight.VirtualDom.attribute "fill"


{-| -}
filter : String -> Attribute msg
filter =
    CssLight.VirtualDom.attribute "filter"


{-| -}
floodColor : String -> Attribute msg
floodColor =
    CssLight.VirtualDom.attribute "flood-color"


{-| -}
floodOpacity : String -> Attribute msg
floodOpacity =
    CssLight.VirtualDom.attribute "flood-opacity"


{-| -}
fontFamily : String -> Attribute msg
fontFamily =
    CssLight.VirtualDom.attribute "font-family"


{-| -}
fontSizeAdjust : String -> Attribute msg
fontSizeAdjust =
    CssLight.VirtualDom.attribute "font-size-adjust"


{-| -}
fontSize : String -> Attribute msg
fontSize =
    CssLight.VirtualDom.attribute "font-size"


{-| -}
fontStretch : String -> Attribute msg
fontStretch =
    CssLight.VirtualDom.attribute "font-stretch"


{-| -}
fontStyle : String -> Attribute msg
fontStyle =
    CssLight.VirtualDom.attribute "font-style"


{-| -}
fontVariant : String -> Attribute msg
fontVariant =
    CssLight.VirtualDom.attribute "font-variant"


{-| -}
fontWeight : String -> Attribute msg
fontWeight =
    CssLight.VirtualDom.attribute "font-weight"


{-| -}
glyphOrientationHorizontal : String -> Attribute msg
glyphOrientationHorizontal =
    CssLight.VirtualDom.attribute "glyph-orientation-horizontal"


{-| -}
glyphOrientationVertical : String -> Attribute msg
glyphOrientationVertical =
    CssLight.VirtualDom.attribute "glyph-orientation-vertical"


{-| -}
imageRendering : String -> Attribute msg
imageRendering =
    CssLight.VirtualDom.attribute "image-rendering"


{-| -}
kerning : String -> Attribute msg
kerning =
    CssLight.VirtualDom.attribute "kerning"


{-| -}
letterSpacing : String -> Attribute msg
letterSpacing =
    CssLight.VirtualDom.attribute "letter-spacing"


{-| -}
lightingColor : String -> Attribute msg
lightingColor =
    CssLight.VirtualDom.attribute "lighting-color"


{-| -}
markerEnd : String -> Attribute msg
markerEnd =
    CssLight.VirtualDom.attribute "marker-end"


{-| -}
markerMid : String -> Attribute msg
markerMid =
    CssLight.VirtualDom.attribute "marker-mid"


{-| -}
markerStart : String -> Attribute msg
markerStart =
    CssLight.VirtualDom.attribute "marker-start"


{-| -}
mask : String -> Attribute msg
mask =
    CssLight.VirtualDom.attribute "mask"


{-| -}
opacity : String -> Attribute msg
opacity =
    CssLight.VirtualDom.attribute "opacity"


{-| -}
overflow : String -> Attribute msg
overflow =
    CssLight.VirtualDom.attribute "overflow"


{-| -}
pointerEvents : String -> Attribute msg
pointerEvents =
    CssLight.VirtualDom.attribute "pointer-events"


{-| -}
shapeRendering : String -> Attribute msg
shapeRendering =
    CssLight.VirtualDom.attribute "shape-rendering"


{-| -}
stopColor : String -> Attribute msg
stopColor =
    CssLight.VirtualDom.attribute "stop-color"


{-| -}
stopOpacity : String -> Attribute msg
stopOpacity =
    CssLight.VirtualDom.attribute "stop-opacity"


{-| -}
strokeDasharray : String -> Attribute msg
strokeDasharray =
    CssLight.VirtualDom.attribute "stroke-dasharray"


{-| -}
strokeDashoffset : String -> Attribute msg
strokeDashoffset =
    CssLight.VirtualDom.attribute "stroke-dashoffset"


{-| -}
strokeLinecap : String -> Attribute msg
strokeLinecap =
    CssLight.VirtualDom.attribute "stroke-linecap"


{-| -}
strokeLinejoin : String -> Attribute msg
strokeLinejoin =
    CssLight.VirtualDom.attribute "stroke-linejoin"


{-| -}
strokeMiterlimit : String -> Attribute msg
strokeMiterlimit =
    CssLight.VirtualDom.attribute "stroke-miterlimit"


{-| -}
strokeOpacity : String -> Attribute msg
strokeOpacity =
    CssLight.VirtualDom.attribute "stroke-opacity"


{-| -}
strokeWidth : String -> Attribute msg
strokeWidth =
    CssLight.VirtualDom.attribute "stroke-width"


{-| -}
stroke : String -> Attribute msg
stroke =
    CssLight.VirtualDom.attribute "stroke"


{-| -}
textAnchor : String -> Attribute msg
textAnchor =
    CssLight.VirtualDom.attribute "text-anchor"


{-| -}
textDecoration : String -> Attribute msg
textDecoration =
    CssLight.VirtualDom.attribute "text-decoration"


{-| -}
textRendering : String -> Attribute msg
textRendering =
    CssLight.VirtualDom.attribute "text-rendering"


{-| -}
unicodeBidi : String -> Attribute msg
unicodeBidi =
    CssLight.VirtualDom.attribute "unicode-bidi"


{-| -}
visibility : String -> Attribute msg
visibility =
    CssLight.VirtualDom.attribute "visibility"


{-| -}
wordSpacing : String -> Attribute msg
wordSpacing =
    CssLight.VirtualDom.attribute "word-spacing"


{-| -}
writingMode : String -> Attribute msg
writingMode =
    CssLight.VirtualDom.attribute "writing-mode"
