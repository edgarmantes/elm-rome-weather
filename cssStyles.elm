module CssStyles exposing (..)

import Style exposing (..)


backgroundPicture : List Style
backgroundPicture =
    [ backgroundImage "url(./sky2.jpg)"
    , backgroundRepeat "no-repeat"
    , backgroundAttachment "fixed"
    , backgroundPosition "cover"
    , position fixed
    , left "0"
    , top "0"
    , right "0"
    , bottom "0"
    , zIndex "-1"
    ]


loading : List Style
loading =
    [ color "white"
    , fontSize (px 50)
    , position "fixed"
    , top (pc 50)
    , left (pc 39)
    ]


columnLayout : List Style
columnLayout =
    [ display block
    , flexDirection column
    , Style.height (pc 100)
    , maxWidth (px 1200)
    , textAlign center
    , margin "0 auto"
    , color "white"
    ]


halfBox : List Style
halfBox =
    [ display inlineBlock
    , width (pc 49)
    , margin "20px 0"
    ]



--Current Module


currentTemp : List Style
currentTemp =
    [ fontSize (px 60) ]


currentDetails : List Style
currentDetails =
    [ fontSize (px 20) ]


dropDown : List Style
dropDown =
    [ height (px 35)
    , borderRadius (px 10)
    ]



--Five Day Module


unordered : List Style
unordered =
    [ padding "0 12px" ]


listItem : List Style
listItem =
    [ listStyleType none
    , border (px 1)
    , borderBottomColor "white"
    , borderBottomStyle "solid"
    , padding "18px 10px"
    ]


fiveRange : List Style
fiveRange =
    [ display inlineBlock
    , width (pc 30)
    , fontSize (px 20)
    ]


fiveTemps : List Style
fiveTemps =
    [ margin "5px 15px"
    , display inlineBlock
    ]


fiveDay : List Style
fiveDay =
    [ width (pc 35)
    , display inlineBlock
    , textAlign "left"
    , fontSize (px 40)
    ]



--Alerts Module


heading : List Style
heading =
    [ fontSize (px 50)
    , color "red"
    ]


listItemNoBorder : List Style
listItemNoBorder =
    [ listStyleType none
    , padding "10px 10px"
    ]


alertDay : List Style
alertDay =
    [ width (pc 35)
    , display inlineBlock
    , textAlign "left"
    , fontSize (px 40)
    , margin "5px 0"
    ]


alertTemp : List Style
alertTemp =
    [ display inlineBlock
    , width (pc 30)
    , fontSize (px 20)
    ]


unorderedAlert : List Style
unorderedAlert =
    [ padding "0 12px"
    , border (px 1)
    , borderLeftColor "white"
    , borderLeftStyle solid
    ]



--Pollut Module


coValue : List Style
coValue =
    [ fontSize (px 35) ]
