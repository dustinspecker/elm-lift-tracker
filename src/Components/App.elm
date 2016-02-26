module Components.App where

import Actions
import Html exposing (..)
import Components.LiftList as LiftList

---- MODEL ----

-- The full application state of our app
type alias Model =
  { lifts : LiftList.Model
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

---- VIEW ----
view : Signal.Address Actions.Action -> Model -> Html
view address model =
  LiftList.view address model.lifts
