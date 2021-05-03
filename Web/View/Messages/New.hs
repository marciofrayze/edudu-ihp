module Web.View.Messages.New where
import Web.View.Prelude

data NewView = NewView { message :: Message }

instance View NewView where
    html NewView { .. } = [hsx|
        <h1>New Message</h1>
        {renderForm message}
    |]



renderForm :: Message -> Html
renderForm message = formFor message [hsx|
    {(textField #title)}
    {(textareaField #body)}
    {submitButton} 
    <a href={MessagesAction}>Cancel</a>
|]
