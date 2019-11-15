Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :teams
  resources :matches
  
  root 'teams#ranking'

  patch '/matches/:id/games', to: 'matches#game', as: 'games'

end
