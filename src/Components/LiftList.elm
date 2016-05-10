module Components.LiftList exposing (..)

import Actions
import Html exposing (Html, ul)
import Components.Lift as Lift
import List


---- MODEL ----


type alias Model =
  List Lift.Model



---- VIEW ----


view : Model -> Html Actions.Action
view model =
  ul
    []
    (List.map (\lift -> Lift.view lift) model)
