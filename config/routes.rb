Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/users/about','users#about'
  get '/pages/help','pages#help'
  get '/pages/login',to:'sessions#new'
  get 'pages/signup','pages#signup'
  post '/insert',to:"pages#insert"
  get '/users/new','users#new'
  get '/login',to: 'sessions#new'
  post '/login',to: 'sessions#create'
  delete '/logout',to: 'sessions#destroy'
  get '/posts/showall','posts#showall'
  get '/posts/about','posts#about'
  get '/posts/userposts','posts#userposts'
  get 'sessions/about','sessions#about'
  get 'sessions/logout','sessions#destroy'
  post 'sessions/update',to:'sessions#update'
  get 'pages/posts',to:'pages#posts'
  resources :users
  resources :posts
end
