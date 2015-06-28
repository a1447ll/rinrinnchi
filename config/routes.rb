Rails.application.routes.draw do
  root 'static_pages#home'

  get '/users' => 'users#index'
end
