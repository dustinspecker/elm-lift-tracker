module Main exposing (..)

import Components.App as App
import Reducers
import Html.App as Html


---- INPUTS ----


main =
  Html.beginnerProgram
    { model = App.initialModel
    , update = Reducers.update
    , view = App.view
    }
