Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  get "/sign_up" => "users#new", as: "sign_up"
end
