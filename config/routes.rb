Rails.application.routes.draw do


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


end

