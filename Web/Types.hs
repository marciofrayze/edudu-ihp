module Web.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

data MessagesController
    = MessagesAction
    | NewMessageAction
    | ShowMessageAction { messageId :: !(Id Message) }
    | CreateMessageAction
    | EditMessageAction { messageId :: !(Id Message) }
    | UpdateMessageAction { messageId :: !(Id Message) }
    | DeleteMessageAction { messageId :: !(Id Message) }
    deriving (Eq, Show, Data)
