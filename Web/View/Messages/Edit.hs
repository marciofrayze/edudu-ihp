module Web.View.Messages.Edit where
import Web.View.Prelude

data EditView = EditView { message :: Message }

instance View EditView where
    html EditView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={MessagesAction}>Back</a></li>
            </ol>
        </nav>
        <h1>Editing</h1>
        {renderForm message}
    |]

renderForm :: Message -> Html
renderForm message = formFor message [hsx|
    {(textField #title)}
    {(textareaField #body)}
    {submitButton}
|]
