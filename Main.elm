module Main where

import Html exposing (..)
import StartApp.Simple exposing (start)

---- MODEL ----

-- The full application state of our app
type alias Model =
  { lifts : List String
  }

initialModel : Model
initialModel =
  { lifts = []
  }

---- UPDATE ----
update : a -> Model -> Model
update address model =
  model

---- VIEW ----
view : Signal.Address a -> Model -> Html
view address model =
  text (toString model)

---- INPUTS ----
main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
