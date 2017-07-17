module FiveDay exposing (..)

import CssStyles exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Http
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (decode, required, requiredAt)


-- Model Module
--forecastDecoder : Decoder Weather
--forecastDecoder =
--    decode Weather
--        |> Json.Decode.Pipeline.optional
--        |> Json.Decode.Pipeline.required "list" Json.Decode.list
---- View Module
--fetchForecast : String -> Cmd Msg
--fetchForecast unit =
--    let
--        url =
--            "http://api.openweathermap.org/data/2.5/forecast/daily?q=Rome,IT&cnt=5&units=" ++ unit ++ "&appid=698009a4dde62e48490582289f422bd2"
--        request =
--            Http.get url forecastDecoder
--    in
--    Http.send LoadWeather request


view =
    div [ class "fiveday-container col-6", style halfBox ]
        [ ul [ style unordered ]
            [ li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            , li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            , li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            , li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            , li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            , li [ class "5", style listItem ]
                [ span [ class "five-day", style fiveDay ]
                    [ text "Fri" ]
                , div [ class "five-temps", style fiveRange ]
                    [ p [ class "five-hi", style fiveTemps ]
                        [ text "hi: 80°" ]
                    , p [ class "five-lo", style fiveTemps ]
                        [ text "lo: 60°" ]
                    ]
                ]
            ]
        ]
