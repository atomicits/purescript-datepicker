module DatePicker where

import Prelude
import Data.DateTime (Date)
import DatePicker.PropType (EventHandler, EventHandlerBool, Mode, NumberOrObject, StringOrDate)
import RNX.Styles (Style)
import React (ReactClass, ReactElement, createElement)

foreign import datePickerClass :: forall props. ReactClass props


type DatePickerProps eff =
  { mode           :: Mode
  , date           :: StringOrDate
  , format         :: String
  , minDate        :: StringOrDate
  , maxDate        :: StringOrDate
  , height         :: Number
  , duration       :: Number
  , confirmBtnText :: String
  , cancelBtnText  :: String
  , iconSource     :: NumberOrObject
  , customStyles   :: Style
  , showIcon       :: Boolean
  , disabled       :: Boolean
  , onDateChange   :: EventHandler eff Date
  , onOpenModal    :: EventHandler eff Unit
  , onCloseModal   :: EventHandler eff Unit
  , placeholder    :: String
  , is24Hour       :: String
  , modalOnResponderTerminationRequest :: EventHandlerBool eff Boolean
  }


datePicker :: forall eff. DatePickerProps eff-> ReactElement
datePicker p = createElement datePickerClass p []
