module Lift where

import Actions
import Html exposing (..)
import Html.Events exposing (onClick)

---- MODEL ----
type alias Model =
  { name : String
  , id : Int
  }

---- VIEW ----
view : Signal.Address Actions.Action -> Model -> Html
view address lift =
  li []
    [ text lift.name
    , button [ onClick address (Actions.Delete lift.id) ] [ text "Delete" ]
    ]
