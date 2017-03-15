module DatePicker.PropType where

import Prelude

import Data.Function.Eff (EffFn1)
import React.DOM.Props (Props, unsafeMkProps)

type Prop a = a -> a

newtype Mode = Mode String

date :: Mode
date = Mode "date"

time :: Mode
time = Mode "time"

dateTime :: Mode
dateTime = Mode "datetime"

data ImageSource
  = ImgURI {uri :: String}
  | URIs (Array {uri :: String, width::Int, height :: Int})

sourceWithName :: String -> ImageSource -> Props
sourceWithName name (ImgURI uri)  = unsafeMkProps name  uri
sourceWithName name (URIs aryuri) = unsafeMkProps name aryuri

type EventHandler eff a = EffFn1 eff a Unit

type EventHandlerBool eff a = EffFn1 eff a Boolean

data StringOrDate = String | Date

data NumberOrObject = Number | ImageSource
