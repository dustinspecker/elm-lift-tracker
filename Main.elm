module Main where

import Actions
import App
import Html exposing (..)
import Html.Events exposing (onClick)
import List
import LiftList
import Reducers
import StartApp.Simple exposing (start)

---- INPUTS ----
main =
  start
    { model = App.initialModel
    , update = Reducers.update
    , view = App.view
    }
