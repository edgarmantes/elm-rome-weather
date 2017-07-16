module Main exposing (..)

import Alerts as Alerts
import CssStyles exposing (..)
import Debug exposing (..)
import FiveDay as FiveDay
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Decode
import Json.Decode.Pipeline exposing (decode, required)
import Pollut as Pollut
import RemoteData exposing (..)
import Style exposing (..)


--import Msgs exposing Msg
--Models


type alias Temps =
    { currTemp : String
    , currHigh : String
    , currLow : String
    }


currentTemps : Temps
currentTemps =
    { currTemp = "80"
    , currHigh = "90"
    , currLow = "60"
    }



----Update
--type Msg currTemps
--    = Temps
--type Msg
--    = OnFetchedTemps (WebData currTemps)
--update : Msg -> Model -> ( Model, Cmd Msg )
--update msg model =
--    case msg of
--        Msg.OnFetchedTemps response ->
--            ( { model | currTemp = response }, Cmd.none )
----Commands.elm
--fetchTemps : Cmd Msg
--fetchTemps =
--    Http.get fetchTempUrl
--fetchTempUrl : String
--fetchTempUrl =
--    "http://api.openweathermap.org/data/2.5/weather?q=Rome,IT&units=Imerial&APPID=698009a4dde62e48490582289f422bd2"
--tempsDecoder : Decode.Decoder currTemps
--tempsDecoder =
--    Decode.list tempsDecoder
--tempDecoder : Decode.Decoder Model
--tempDecoder =
--    decode Model
--        |> required "temp" Decode.int
--        |> required "hi" Decode.int
--        |> required "lo" Decode.int
----Main.elm


main =
    view



--maybeList : WebData currentTemps -> Html Msg
--maybeList response =
--    case response of
--        RemoteData.NotAsked ->
--            text ""
--        RemoteData.Loading ->
--            text "Loading..."
--        RemoteData.Success temps ->
--            list temp
--        RemoteData.Failure error ->
--            text (toString error)


getWarAndPeace : Http.Request String
getWarAndPeace =
    Http.getString "http://api.openweathermap.org/data/2.5/weather?q=Rome,IT&units=Imerial&APPID=698009a4dde62e48490582289f422bd2"


view =
    div [ class "project-container", style columnLayout ]
        [ div []
            [ div [ class "current-weather", style halfBox ]
                [ div [ class "current-temp", style currentTemp ]
                    [ text currentTemps.currTemp
                    , span [ class "current-symb" ]
                        [ text "°" ]
                    ]
                , div [ class "current-range", style currentDetails ]
                    [ span [ class "current-hi" ]
                        [ text ("hi: " ++ currentTemps.currHigh ++ "°/") ]
                    , span []
                        [ text ("lo: " ++ currentTemps.currLow ++ "°") ]
                    ]
                , div [ attribute "className" "current-humidity", style currentDetails ]
                    [ text "hum: 60%" ]
                , select [ style dropDown ]
                    [ option [ value "F" ]
                        [ text "F°" ]
                    , option [ value "C" ]
                        [ text "C°" ]
                    , option [ value "Both" ]
                        [ text "F°/C°" ]
                    ]
                ]
            , div [ style backgroundPicture ] []

            --, button [] [ text "Get Temps" ]
            , Pollut.view
            ]
        , FiveDay.view
        , Alerts.view
        ]
