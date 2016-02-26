module LiftList where

import Actions
import Html exposing (..)
import Lift
import List

---- MODEL ----
type alias Model = List Lift.Model

---- VIEW ----
view : Signal.Address Actions.Action -> Model -> Html
view address model =
  ul []
    (List.map (\lift -> Lift.view address lift) model)
