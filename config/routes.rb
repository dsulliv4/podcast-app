Rails.application.routes.draw do

  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/signup' => 'users#new'


  resources :reviews
  resources :categories
  resources :podcasts
  resources :users 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
