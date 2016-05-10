module Main exposing (..)

import Components.App as App
import Reducers
import Html.App as Html


---- INPUTS ----


main =
  Html.program
    { init = (App.initialModel, Cmd.none)
    , subscriptions = \_ -> Sub.none
    , update = Reducers.update
    , view = App.view
    }
