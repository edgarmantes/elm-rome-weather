module Pollut exposing (..)

import CssStyles exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view =
    div [ class "pollut-container", style halfBox ]
        [ h3 [ style coValue ]
            [ text "Carbon Monoxide at sea level:" ]
        , p [ style coValue ]
            [ text "200ppm" ]
        ]
