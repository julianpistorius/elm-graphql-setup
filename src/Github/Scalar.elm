-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Scalar exposing (Date(..), DateTime(..), Decoders, GitObjectID(..), GitSSHRemote(..), GitTimestamp(..), Html(..), Id(..), Uri(..), X509Certificate(..), defaultDecoders, defineDecoders, unwrapDecoders)

import Graphql.Internal.Builder.Object as Object
import Json.Decode as Decode exposing (Decoder)


type Date
    = Date String


type DateTime
    = DateTime String


type GitObjectID
    = GitObjectID String


type GitSSHRemote
    = GitSSHRemote String


type GitTimestamp
    = GitTimestamp String


type Html
    = Html String


type Id
    = Id String


type Uri
    = Uri String


type X509Certificate
    = X509Certificate String


defineDecoders :
    { decoderDate : Decoder decoderDate
    , decoderDateTime : Decoder decoderDateTime
    , decoderGitObjectID : Decoder decoderGitObjectID
    , decoderGitSSHRemote : Decoder decoderGitSSHRemote
    , decoderGitTimestamp : Decoder decoderGitTimestamp
    , decoderHtml : Decoder decoderHtml
    , decoderId : Decoder decoderId
    , decoderUri : Decoder decoderUri
    , decoderX509Certificate : Decoder decoderX509Certificate
    }
    -> Decoders decoderDate decoderDateTime decoderGitObjectID decoderGitSSHRemote decoderGitTimestamp decoderHtml decoderId decoderUri decoderX509Certificate
defineDecoders definitions =
    Decoders
        { decoderDate = definitions.decoderDate
        , decoderDateTime = definitions.decoderDateTime
        , decoderGitObjectID = definitions.decoderGitObjectID
        , decoderGitSSHRemote = definitions.decoderGitSSHRemote
        , decoderGitTimestamp = definitions.decoderGitTimestamp
        , decoderHtml = definitions.decoderHtml
        , decoderId = definitions.decoderId
        , decoderUri = definitions.decoderUri
        , decoderX509Certificate = definitions.decoderX509Certificate
        }


unwrapDecoders :
    Decoders decoderDate decoderDateTime decoderGitObjectID decoderGitSSHRemote decoderGitTimestamp decoderHtml decoderId decoderUri decoderX509Certificate
    ->
        { decoderDate : Decoder decoderDate
        , decoderDateTime : Decoder decoderDateTime
        , decoderGitObjectID : Decoder decoderGitObjectID
        , decoderGitSSHRemote : Decoder decoderGitSSHRemote
        , decoderGitTimestamp : Decoder decoderGitTimestamp
        , decoderHtml : Decoder decoderHtml
        , decoderId : Decoder decoderId
        , decoderUri : Decoder decoderUri
        , decoderX509Certificate : Decoder decoderX509Certificate
        }
unwrapDecoders (Decoders unwrappedDecoders) =
    unwrappedDecoders


type Decoders decoderDate decoderDateTime decoderGitObjectID decoderGitSSHRemote decoderGitTimestamp decoderHtml decoderId decoderUri decoderX509Certificate
    = Decoders (RawDecoders decoderDate decoderDateTime decoderGitObjectID decoderGitSSHRemote decoderGitTimestamp decoderHtml decoderId decoderUri decoderX509Certificate)


type alias RawDecoders decoderDate decoderDateTime decoderGitObjectID decoderGitSSHRemote decoderGitTimestamp decoderHtml decoderId decoderUri decoderX509Certificate =
    { decoderDate : Decoder decoderDate
    , decoderDateTime : Decoder decoderDateTime
    , decoderGitObjectID : Decoder decoderGitObjectID
    , decoderGitSSHRemote : Decoder decoderGitSSHRemote
    , decoderGitTimestamp : Decoder decoderGitTimestamp
    , decoderHtml : Decoder decoderHtml
    , decoderId : Decoder decoderId
    , decoderUri : Decoder decoderUri
    , decoderX509Certificate : Decoder decoderX509Certificate
    }


defaultDecoders : RawDecoders Date DateTime GitObjectID GitSSHRemote GitTimestamp Html Id Uri X509Certificate
defaultDecoders =
    { decoderDate = Object.scalarDecoder |> Decode.map Date
    , decoderDateTime = Object.scalarDecoder |> Decode.map DateTime
    , decoderGitObjectID = Object.scalarDecoder |> Decode.map GitObjectID
    , decoderGitSSHRemote = Object.scalarDecoder |> Decode.map GitSSHRemote
    , decoderGitTimestamp = Object.scalarDecoder |> Decode.map GitTimestamp
    , decoderHtml = Object.scalarDecoder |> Decode.map Html
    , decoderId = Object.scalarDecoder |> Decode.map Id
    , decoderUri = Object.scalarDecoder |> Decode.map Uri
    , decoderX509Certificate = Object.scalarDecoder |> Decode.map X509Certificate
    }
