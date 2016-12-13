module Main exposing (..)

import Html exposing (text)
import List.Extra as List exposing (permutations)
import Array exposing (fromList, get)


main : Html.Html msg
main =
    let
        elementPosition =
            10

        inputList =
            [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 ]

        permutationInTheGivenPosition =
            permutations inputList
                |> fromList
                |> get elementPosition
    in
        text (toString (permutationInTheGivenPosition))
