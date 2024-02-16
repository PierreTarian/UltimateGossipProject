Rails.application.routes.draw do

  resources :gossips do
    resources :comments
    resources :likes, only:[:new, :create, :destroy]
  end
  resources :users, only:[:show, :new, :create]
  resources :cities, only:[:show]
  resources :sessions, only:[:new, :create, :destroy]


  #mise en place du root principal
  root to:'gossips#index' 

  #mise en place d'une page team depuis le controller pages
  get '/team', to: 'pages#team' 

  #mise en place d'une page contact depuis le controller pages
  get '/contact', to: 'pages#contact'

  #mise en place d'une route dynamique
  get 'welcome(/:first_name)', to: 'pages#welcome' , as: 'welcome'


  #mise en place d'un route dynamique
  get 'potin/:id', to:'pages#potin'

  #mise en place d'un route dynamique
  get 'potin/auteur/:title', to:'pages#auteur'

  delete 'sessions/:id' , to: 'sessions#destroy' 

end