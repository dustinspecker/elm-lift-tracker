module Reducers (..) where

import Actions
import Components.App as App
import List


update : Actions.Action -> App.Model -> App.Model
update action model =
  case action of
    Actions.Delete id ->
      { model | lifts = List.filter (\lift -> lift.id /= id) model.lifts }
