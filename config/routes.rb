Rails.application.routes.draw do
  resources :post_comments
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'
  match '/about', to: 'pages#about', via: ['get']
  match '/contact', to: 'pages#contact', via: ['get']
  match '/resources', to: 'pages#resources', via: ['get']
  resources :categories
   resources :posts
   devise_for :admin_users, ActiveAdmin::Devise.config
   ActiveAdmin.routes(self)

end
