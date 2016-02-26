module Main where

import Actions
import App
import Html exposing (..)
import Html.Events exposing (onClick)
import List
import LiftList
import StartApp.Simple exposing (start)

---- UPDATE ----
removeFromList : Int -> List a -> List a
removeFromList index list =
  (List.take index list) ++ (List.drop (index + 1) list)

update : Actions.Action -> App.Model -> App.Model
update action model =
  case action of
    Actions.Delete id ->
      { model | lifts = removeFromList id model.lifts }

---- INPUTS ----
main =
  start
    { model = App.initialModel
    , update = update
    , view = App.view
    }
