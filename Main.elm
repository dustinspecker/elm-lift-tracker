module Main where

import Html exposing (..)
import Html.Events exposing (onClick)
import List
import StartApp.Simple exposing (start)

---- MODEL ----

-- The full application state of our app
type alias Model =
  { lifts : List Lift
  }

type alias Lift =
  { name : String
  , id : Int
  }

initialModel : Model
initialModel =
  { lifts =
    [ { name = "squats"
      , id = 0
      }
    , { name = "bench"
      , id = 1
      }
    , { name = "overhead"
      , id = 2
      }
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
createListItem : Signal.Address Action -> Lift -> Html
createListItem address lift =
  li []
    [ text lift.name
    , button [ onClick address (Delete lift.id)] [ text "Delete" ]
    ]

view : Signal.Address Action -> Model -> Html
view address model =
  ul []
    (List.map (\lift -> createListItem address lift) model.lifts)

---- INPUTS ----
main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
