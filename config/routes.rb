Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :memories, only: [:index, :show, :create, :update, :destroy]
      resources :users, only: [:index, :show, :create, :update, :destroy]
      resources :emotions, only: [:index]
      resources :emotion_memories, only: [:index, :show, :create, :update, :destroy]
      resources :thought_memories, only: [:index, :show, :create, :update, :destroy]
      post '/login', to: 'auth#create'
      # Do I want to do this profile?
      get '/profile', to: 'users#profile'
    end
  end
end
