module Web.View.Messages.Show where
import Web.View.Prelude
import qualified Text.MMark as MMark

data ShowView = ShowView { message :: Message }

instance View ShowView where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={MessagesAction}>Back</a></li>
            </ol>
        </nav>
        <h1>{get #title message}</h1>
        <p>{get #body message}</p>

        <p>{get #createdAt message |> timeAgo}</p>
        <hr>
        <a href={EditMessageAction (get #id message)}>Edit</a> | 
        <a href={DeleteMessageAction (get #id message)} class="js-delete text-muted">Delete</a>
    |]

