module Components.Lift where

import Actions
import Html exposing (button, Html, input, li, text)
import Html.Attributes exposing (type', value)
import Html.Events exposing (onClick)

---- MODEL ----
type alias Model =
  { name : String
  , weight: Int
  , id : Int
  }

---- VIEW ----
view : Signal.Address Actions.Action -> Model -> Html
view address lift =
  li []
    [ text lift.name
    , input
      [ type' "number"
      , value (toString lift.weight)
      ]
      []
    , button [ onClick address (Actions.Delete lift.id) ] [ text "Delete" ]
    ]
