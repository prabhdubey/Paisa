Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users
  

  devise_scope :user do  
	  match '/users/sign_out' => 'devise/sessions#destroy', via: [:get, :post]
  end
  resources :category 
  resources :products 
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
