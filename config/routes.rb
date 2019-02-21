Rails.application.routes.draw do
  
 
  get 'likehandle/like/:user_id/:id_gossip', to: "likehandle#like"
  get 'likehandle/dislike/:user_id/:id_gossip', to: "likehandle#dislike"

  get 'likehandle/like_home/:user_id/:id_gossip', to: "likehandle#like_home"
  get 'likehandle/dislike_home/:user_id/:id_gossip', to: "likehandle#dislike_home"


  get 'logout', to: "logout#logout"
  get 'sign_up/createuser'
  get 'login', to: "session#login"
  post 'login_check', to: "session#login"
  post 'session/create', to: "session#create"
  post 'saving_comment', to: "commenter#commenter"
  post 'saving_ucomment', to: "commenter#souscommenter"
  get '/user', to: "userlisting#userlisting"
  get 'gossips/:id_gossip', to:"afficher#afficher"
  get 'welcome/:first_name', to: "welcome#welcome"
  post 'modif/', to: "modif#modif"
  get '/delete/:id_gossip', to: "delete#delete"
  get 'edit/:id_gossip', to: "edit#edit"
  get 'afficher/:id_gossip', to:"afficher#afficher"
  get 'contact/', to: "contact#contact"
  get 'team/', to: "team#team"
  post 'acceuil/potin', to: "acceul#acceul"
  get '', to: "acceuil#home"
  #resources :sessions, only:[:new, :create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end