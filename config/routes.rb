Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  resources :categories
   resources :posts
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)

end
