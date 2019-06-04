Rails.application.routes.draw do
  resources :pickers
  devise_for :users
  resources :previousholders
  resources :items
  resources :employees 

  root "employees#index" 
  
end
