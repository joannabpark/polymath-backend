Rails.application.routes.draw do
  resources :messages
  resources :comments
  resources :lessons
  resources :skills
  resources :users
  resources :user_skills

  post '/users/login', to: 'users#login'
  get '/current_session', to: 'users#current_session'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
