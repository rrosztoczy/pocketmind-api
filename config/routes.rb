Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :memories, :users, :emotion_memories, :thought_memories
end
