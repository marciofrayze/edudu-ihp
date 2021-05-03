module Web.View.Messages.Index where
import Web.View.Prelude

data IndexView = IndexView { messages :: [Message] }

instance View IndexView where
    html IndexView { .. } = [hsx|
        <h1>Main message board</h1>
        <h1><a href={pathTo NewMessageAction} class="btn btn-primary ml-4">New Message</a></h1>
        <div class="table-responsive">
            <table class="table">
                <tbody>{forEach messages renderMessage}</tbody>
            </table>
        </div>

    |]


renderMessage message = [hsx|
    <tr>
       <td>
         <p>
           <a href={ShowMessageAction (get #id message)}>
             {get #title message}
           </a>
           - {get #createdAt message |> timeAgo}
         </p>
         <p>
           {get #body message}
         </p>
       </td>
    </tr>
|]
