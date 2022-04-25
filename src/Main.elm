module Main exposing (main)

import Browser exposing (Document)
import Html exposing (..)
import Html.Events exposing (..)
import Http



--- MODEL ---


type alias Model =
    { response : Maybe (Result Http.Error ())
    }



--- UPDATE ---


type Msg
    = NoMessageCreatedYet


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoMessageCreatedYet ->
            ( model, Cmd.none )



--- VIEW ---


view : Model -> Html Msg
view model =
    div []
        [ button [] [ text "Make a request" ]
        ]



--- PROGRAM ---


main =
    Browser.element
        { init = init
        , update = update
        , view = view
        , subscriptions = always Sub.none
        }


init : () -> ( Model, Cmd Msg )
init _ =
    ( { response = Nothing }, Cmd.none )
