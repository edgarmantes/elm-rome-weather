module Update exposing (..)

import Alerts as Alerts
import CssStyles exposing (..)
import Debug exposing (..)
import FiveDay as FiveDay exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (decode, required, requiredAt)
import Model exposing (..)


weatherDecoder : Decoder Weather
weatherDecoder =
    decode Weather
        |> Json.Decode.Pipeline.required "main" mainDataDecoder


mainDataDecoder : Decoder MainData
mainDataDecoder =
    decode MainData
        |> Json.Decode.Pipeline.required "temp" Json.Decode.float
        |> Json.Decode.Pipeline.required "humidity" Json.Decode.int
        |> Json.Decode.Pipeline.required "temp_max" Json.Decode.float
        |> Json.Decode.Pipeline.required "temp_min" Json.Decode.float


fetchWeather : String -> Cmd Msg
fetchWeather unit =
    let
        url =
            "http://api.openweathermap.org/data/2.5/weather?q=Rome,IT&units=" ++ unit ++ "&APPID=698009a4dde62e48490582289f422bd2"

        request =
            Http.get url weatherDecoder
    in
    Http.send LoadWeather request


type Msg
    = FetchWeather
    | LoadWeather (Result Http.Error Weather)
    | ChangeUnits String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        FetchWeather ->
            ( model, fetchWeather model.currentUnit )

        LoadWeather result ->
            case result of
                Ok weather ->
                    ( { model | weatherData = Just weather }, Cmd.none )

                Err _ ->
                    ( model, Cmd.none )

        ChangeUnits unit ->
            ( { model | currentUnit = unit }, fetchWeather unit )
