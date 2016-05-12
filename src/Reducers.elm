module Reducers exposing (..)

import Messages
import Components.App as App
import List


update : Messages.Msg -> App.Model -> App.Model
update msg model =
    case msg of
        Messages.Delete id ->
            { model | lifts = List.filter (\lift -> lift.id /= id) model.lifts }
