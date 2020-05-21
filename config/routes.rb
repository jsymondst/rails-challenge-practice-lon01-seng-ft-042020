Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :buildings, only: [:show, :update, :edit, :index]
  resources :companies, only: [:show, :new, :create, :update, :edit]
  resources :employees, only: [:new, :create, :destroy]

end
