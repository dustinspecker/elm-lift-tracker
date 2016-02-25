module Lift where

import Html exposing (..)
import Html.Events exposing (onClick)

---- MODEL ----
type alias Model =
  { name : String
  , id : Int
  }

---- UPDATE ----
type Action = Delete Int

---- VIEW ----
view : Signal.Address Action -> Model -> Html
view address lift =
  li []
    [ text lift.name
    , button [ onClick address (Delete lift.id) ] [ text "Delete" ]
    ]
