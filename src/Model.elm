module Model exposing (..)

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


type alias Model =
    { currentUnit : String
    , weatherData : Maybe Weather
    }


type alias Weather =
    { main : MainData
    }


type alias MainData =
    { temp : Float
    , humidity : Int
    , high : Float
    , low : Float
    }


initialModel : Model
initialModel =
    Model "Imperial" Nothing
