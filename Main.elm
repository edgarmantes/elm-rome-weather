module Main exposing (..)

import Debug exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Model exposing (..)
import Update exposing (..)
import View exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : ( Model, Cmd Msg )
init =
    ( initialModel, fetchWeather initialModel.currentUnit )



--Needs to be added for the "Html.program" agruments. Those arguments are required to be there. Therefore you need an instance of each one


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
