-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.RepositoryInvitation exposing (id, invitee, inviter, permission, repository)

import ElmGithub.Enum.RepositoryPermission
import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.RepositoryInvitation
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The user who received the invitation.
-}
invitee : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet decodesTo ElmGithub.Object.RepositoryInvitation
invitee object_ =
    Object.selectionForCompositeField "invitee" [] object_ identity


{-| The user who created the invitation.
-}
inviter : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet decodesTo ElmGithub.Object.RepositoryInvitation
inviter object_ =
    Object.selectionForCompositeField "inviter" [] object_ identity


{-| The permission granted on this repository by this invitation.
-}
permission : SelectionSet ElmGithub.Enum.RepositoryPermission.RepositoryPermission ElmGithub.Object.RepositoryInvitation
permission =
    Object.selectionForField "Enum.RepositoryPermission.RepositoryPermission" "permission" [] ElmGithub.Enum.RepositoryPermission.decoder


{-| The Repository the user is invited to.
-}
repository : SelectionSet decodesTo ElmGithub.Interface.RepositoryInfo -> SelectionSet (Maybe decodesTo) ElmGithub.Object.RepositoryInvitation
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ (identity >> Decode.nullable)