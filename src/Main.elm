module Main (..) where

import Components.App as App
import Reducers
import StartApp.Simple exposing (start)


---- INPUTS ----


main =
  start
    { model = App.initialModel
    , update = Reducers.update
    , view = App.view
    }
