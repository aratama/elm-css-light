module CssLight.Hash exposing (fromString)

import CssLight.Murmur3 as Murmur3
import Hex


fromString : String -> String
fromString str =
    str
        |> Murmur3.hashString murmurSeed
        |> Hex.toString
        |> String.cons '_'


murmurSeed : Int
murmurSeed =
    15739
