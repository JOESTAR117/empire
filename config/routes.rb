Rails.application.routes.draw do
  get 'static/index'
  resources :users
  get "/fonts/:id" => "fonts#show", :format => false, :constraints => { :id => /.+/ }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#new'
end
