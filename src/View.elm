module View exposing (..)

import Alerts as Alerts
import CssStyles exposing (..)
import Debug exposing (..)
import FiveDay as FiveDay exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)
import Pollut as Pollut
import RemoteData exposing (..)
import Style exposing (..)
import Update exposing (..)


-- View Module


view : Model -> Html Msg
view model =
    case model.weatherData of
        Just weather ->
            weatherView weather

        Nothing ->
            waitingView model


waitingView : Model -> Html Msg
waitingView model =
    div [ class "loading-page", style loading ]
        [ text "Loading Data..."
        , div [ style backgroundPicture ] []
        ]


weatherView : Weather -> Html Msg
weatherView model =
    div [ class "project-container", style columnLayout ]
        [ div []
            [ div [ class "current-weather", style halfBox ]
                [ div [ class "current-temp", style currentTemp ]
                    [ text (toString (ceiling model.main.temp))
                    , span [ class "current-symb" ]
                        [ text "°" ]
                    ]
                , div [ class "current-range", style currentDetails ]
                    [ span [ class "current-hi" ]
                        [ text ("hi: " ++ toString model.main.high ++ "°/") ]
                    , span []
                        [ text ("lo: " ++ toString model.main.low ++ "°") ]
                    ]
                , div [ attribute "className" "current-humidity", style currentDetails ]
                    [ text ("hum: " ++ toString model.main.humidity ++ "%") ]
                , select [ style dropDown, onInput ChangeUnits ]
                    [ option [ Html.Attributes.value "Imperial" ]
                        [ text "F°" ]
                    , option [ Html.Attributes.value "Metric" ]
                        [ text "C°" ]
                    ]
                ]
            , div [ style backgroundPicture ] []
            , Pollut.view
            ]
        , FiveDay.view
        , Alerts.view
        ]
