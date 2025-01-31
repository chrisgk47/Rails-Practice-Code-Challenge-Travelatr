Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bloggers, only: [:index, :new, :show]
  resources :posts, only: [:index, :new, :edit, :show, :create]
  resources :destinations, only: [:index, :show] 
end
