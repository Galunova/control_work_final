Rails.application.routes.draw do
  root 'establishments#index'

  ActiveAdmin.routes(self)
  devise_for :users
  resources :establishments do
    resources :reviews, :only => [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
