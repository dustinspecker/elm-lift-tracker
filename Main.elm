module Main where

import Html exposing (..)
import Html.Events exposing (onClick)
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
type Action = Delete Int

removeFromList : Int -> List a -> List a
removeFromList index list =
  (List.take index list) ++ (List.drop (index + 1) list)

update : Action -> Model -> Model
update action model =
  case action of
    Delete id ->
      { model | lifts = removeFromList id model.lifts }

---- VIEW ----
createListItem : Int -> Signal.Address Action -> String -> Html
createListItem index address item =
  li []
    [ text item
    , button [ onClick address (Delete index)] [ text "Delete" ]
    ]

view : Signal.Address Action -> Model -> Html
view address model =
  ul []
    (List.indexedMap (\index -> createListItem index address) model.lifts)

---- INPUTS ----
main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
