module Components.App (..) where

import Actions
import Html
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
        , weight = 200
        , id = 0
        }
      , { name = "bench"
        , weight = 150
        , id = 1
        }
      , { name = "overhead"
        , weight = 100
        , id = 2
        }
      ]
  }



---- VIEW ----


view : Signal.Address Actions.Action -> Model -> Html.Html
view address model =
  LiftList.view address model.lifts
