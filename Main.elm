module Main where

import Html exposing (..)
import List
import StartApp.Simple exposing (start)

---- MODEL ----

-- The full application state of our app
type alias Model =
  { lifts : List String
  }

initialModel : Model
initialModel =
  { lifts =
    [ "squats"
    , "bench"
    , "overhead"
    ]
  }

---- UPDATE ----
update : a -> Model -> Model
update address model =
  model

---- VIEW ----
createListItem : String -> Html
createListItem item =
  li []
    [ text item ]

view : Signal.Address a -> Model -> Html
view address model =
  ul []
    (List.map createListItem model.lifts)

---- INPUTS ----
main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
