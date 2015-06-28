Rails.application.routes.draw do
  root 'static_pages#home'
  resources :items
  get '/users' => 'users#index'
end
