Rails.application.routes.draw do
  devise_for :users
  root 'games#index'
  resources :games
  get 'perfil', to: "users#perfil"
end
