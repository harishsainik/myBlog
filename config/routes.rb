Rails.application.routes.draw do
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  Rails.application.routes.draw do
  resources :categories
   resources :posts
  end
end
