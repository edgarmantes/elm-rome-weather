module Alerts exposing (..)

import CssStyles exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)


view =
    div [ class "alerts-container col-6", style halfBox ]
        [ h1 [ class "alerts-hdr", style heading ]
            [ text "Days over 70℉ / 21℃" ]
        , ul [ style unorderedAlert ]
            [ li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            , li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            , li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            , li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            , li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            , li [ class "alertday-item5", style listItemNoBorder ]
                [ p [ class "alert-day", style alertDay ]
                    [ text "Tue"
                    , span [ attribute "className" "alert-date" ]
                        [ text "15" ]
                    ]
                , p [ class "alert-temp", style alertTemp ]
                    [ text "high of: 80℉" ]
                ]
            ]
        ]
