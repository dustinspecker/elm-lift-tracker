module Reducers exposing (..)

import Actions
import Components.App as App
import List


update : Actions.Action -> App.Model -> (App.Model, Cmd Actions.Action)
update action model =
  case action of
    Actions.Delete id ->
      ( { model | lifts = List.filter (\lift -> lift.id /= id) model.lifts }
      , Cmd.none
      )
