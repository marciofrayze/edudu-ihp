module Web.View.Static.Welcome where
import Web.View.Prelude

data WelcomeView = WelcomeView

instance View WelcomeView where
    html WelcomeView = [hsx|
         <div style="background-color: #657b83; padding-top: 2rem; padding-bottom: 2rem; color:hsla(196, 13%, 96%, 1); border-radius: 4px">
              <div style="max-width: 800px; margin-left: auto; margin-right: auto">
                  <h1 style="margin-bottom: 2rem; font-size: 2rem; font-weight: 300; border-bottom: 1px solid white; padding-bottom: 0.25rem; border-color: hsla(196, 13%, 60%, 1)">
                     Edudu 
                  </h1>

                  <h2 style="margin-top: 0; margin-bottom: 0rem; font-weight: 900; font-size: 2rem">
                     The boring school social network.
                  </h2>

                  <p style="margin-top: 1rem; font-size: 1.75rem; font-weight: 600; color:hsla(196, 13%, 80%, 1)">
                     Edudu is a place where the school staff, students and parents can communicate in a easy and pragmatic way.
                  </p>

                  <a href={pathTo MessagesAction} style="margin-top: 2rem; background-color: #268bd2; padding: 1rem; border-radius: 3px; color: hsla(205, 69%, 98%, 1); text-decoration: none; font-weight: bold; display: inline-block; box-shadow: 0 4px 6px hsla(205, 69%, 0%, 0.08);  transition: box-shadow 0.2s; transition: transform 0.2s;">
                     Go to the messages board
                  </a>
              </div>
         </div>

         <div style="max-width: 800px; margin-left: auto; margin-right: auto; margin-top: 4rem">
              <p style="color: hsla(196, 13%, 50%, 1); margin-top: 4rem">
                 Copyleft 2021 - Marcio Frayze David (marcio@segunda.tech)
              </p>
         </div> 
|]
