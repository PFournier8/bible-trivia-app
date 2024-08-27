Rails.application.routes.draw do
  # Add this block at the top
  root 'pages#home'
  resources :users, only: [:create, :index]
  # End of new block

  get "pages/home"
  resources :users
  get "categories/index"
  get "categories/show"
  get "categories/new"
  get "categories/create"
  get "categories/edit"
  get "categories/update"
  get "categories/destroy"
  get "answers/create"
  get "answers/update"
  get "answers/destroy"
  get "questions/index"
  get "questions/show"
  get "questions/new"
  get "questions/create"
  get "questions/edit"
  get "questions/update"
  get "questions/destroy"
  post '/signup', to: 'users#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Remove this line as it's now at the top
  # root 'pages#home'
  
  resources :categories
  resources :questions, only: [:index, :create]
  get 'questions/new', to: 'questions#index', as: 'new_question'
  # Remove this line as it's now at the top with a constraint
  # resources :users

  get '/play', to: 'games#play', as: 'play_game'
  post 'answer', to: 'games#answer', as: 'answer_game'
  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end