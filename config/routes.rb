Rails.application.routes.draw do
 
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  resources :users

  get "/sign_up" => "users#new", as: "sign_up"
  get "/sign_in" => "sessions#new", as: "sign_in"
  post "/sign_in" => "sessions#create", as:"signed_in"
  delete "/sign_out" => "sessions#destroy", as: "sign_out"
end
