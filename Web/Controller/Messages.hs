module Web.Controller.Messages where

import Web.Controller.Prelude
import Web.View.Messages.Index
import Web.View.Messages.New
import Web.View.Messages.Edit
import Web.View.Messages.Show

instance Controller MessagesController where
    action MessagesAction = do
        messages <- query @Message
          |> orderByDesc #createdAt
          |> fetch
        render IndexView { .. }

    action NewMessageAction = do
        let message = newRecord
        render NewView { .. }

    action ShowMessageAction { messageId } = do
        message <- fetch messageId
        render ShowView { .. }

    action EditMessageAction { messageId } = do
        message <- fetch messageId
        render EditView { .. }

    action UpdateMessageAction { messageId } = do
        message <- fetch messageId
        message
            |> buildMessage
            |> ifValid \case
                Left message -> render EditView { .. }
                Right message -> do
                    message <- message |> updateRecord
                    setSuccessMessage "Message updated"
                    redirectTo EditMessageAction { .. }

    action CreateMessageAction = do
        let message = newRecord @Message
        message
            |> buildMessage
            |> ifValid \case
                Left message -> render NewView { .. } 
                Right message -> do
                    message <- message |> createRecord
                    setSuccessMessage "Message posted"
                    redirectTo MessagesAction

    action DeleteMessageAction { messageId } = do
        message <- fetch messageId
        deleteRecord message
        setSuccessMessage "Message deleted"
        redirectTo MessagesAction

buildMessage message = message
    |> fill @["title","body"]
    |> validateField #title nonEmpty
    |> validateField #body nonEmpty
