Rails.application.routes.draw do
  root 'static_pages#home'
  get '/shop' => 'static_pages#shop'
  get '/blog' => 'static_pages#blog'
  get '/users' => 'users#index'

  resources :categories do
    resources :items
  end

  resources :items

end
