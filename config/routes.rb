Rails.application.routes.draw do
  devise_for :users
  root 'games#index'
  resources :games

  get 'search/', to: 'search#index'
  #post '/search', to: 'search#show'


  get 'perfil', to: "users#perfil"

end
