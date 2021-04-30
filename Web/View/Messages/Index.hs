module Web.View.Messages.Index where
import Web.View.Prelude

data IndexView = IndexView { messages :: [Message] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <h1>Main message board</h1>
        <div class="table-responsive">
            <table class="table">
                <tbody>{forEach messages renderMessage}</tbody>
            </table>
        </div>

        <h1><a href={pathTo NewMessageAction} class="btn btn-primary ml-4">New Message</a></h1>
    |]


renderMessage message = [hsx|
    <tr>
       <td><a href={ShowMessageAction (get #id message)}>{get #title message}</a></td>
    </tr>
|]
