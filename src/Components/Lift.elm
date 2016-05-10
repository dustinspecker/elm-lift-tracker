module Components.Lift exposing (..)

import Messages
import Html exposing (button, Html, input, li, text)
import Html.Attributes exposing (type', value)
import Html.Events exposing (onClick)


---- MODEL ----


type alias Model =
  { name : String
  , weight : Int
  , id : Int
  }



---- VIEW ----


view : Model -> Html Messages.Msg
view lift =
  li
    []
    [ text lift.name
    , input
        [ type' "number"
        , value (toString lift.weight)
        ]
        []
    , button [ onClick (Messages.Delete lift.id) ] [ text "Delete" ]
    ]
