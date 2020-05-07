Rails.application.routes.draw do

  #get 'sessions/new'
  #get 'sessions/create'
  #get 'sessions/destroy'
  root 'static#index'
  get 'team', to: 'static#team'
  get 'contact', to: 'static#contact'
  get 'welcome/:first_name', to: 'welcome#show'
  get 'gossip/:id', to: 'gossip#show'
  get 'gossip/:id/edit', to: 'gossip#edit'
  post 'gossip/:id/edit', to: 'gossip#update_gossip'
  get 'new_gossip', to: 'gossip#new_gossip'
  


  resources :gossip
  resources :user
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'user#new', as:'signup'
  get 'login', to: 'sessions#new', as:'login'
  get 'logout', to: 'sessions#destroy', as:'logout'

end

