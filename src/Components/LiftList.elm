module Components.LiftList exposing (..)

import Messages
import Html exposing (Html, ul)
import Components.Lift as Lift
import List


---- MODEL ----


type alias Model =
  List Lift.Model



---- VIEW ----


view : Model -> Html Messages.Msg
view model =
  ul
    []
    (List.map (\lift -> Lift.view lift) model)
