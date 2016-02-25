module Main where

import Html exposing (..)
import Html.Events exposing (onClick)
import Lift
import List
import StartApp.Simple exposing (start)

---- MODEL ----

-- The full application state of our app
type alias Model =
  { lifts : List Lift.Model
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
removeFromList : Int -> List a -> List a
removeFromList index list =
  (List.take index list) ++ (List.drop (index + 1) list)

update : Lift.Action -> Model -> Model
update action model =
  case action of
    Lift.Delete id ->
      { model | lifts = removeFromList id model.lifts }

---- VIEW ----
view : Signal.Address Lift.Action -> Model -> Html
view address model =
  ul []
    (List.map (\lift -> Lift.view address lift) model.lifts)

---- INPUTS ----
main =
  start
    { model = initialModel
    , update = update
    , view = view
    }
