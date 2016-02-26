module Reducers where

import Actions
import App
import List

removeFromList : Int -> List a -> List a
removeFromList index list =
  (List.take index list) ++ (List.drop (index + 1) list)

update : Actions.Action -> App.Model -> App.Model
update action model =
  case action of
    Actions.Delete id ->
      { model | lifts = removeFromList id model.lifts }
