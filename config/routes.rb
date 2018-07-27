Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/pages/login',to:'sessions#new'
  get '/users/new','users#new'
  get '/login',to: 'sessions#new'
  post '/login',to: 'sessions#create'
  get '/posts/showall','posts#showall'
  get '/posts/userposts','posts#userposts' #displays user posts and details about user
  get 'sessions/about','sessions#about'  #about userprofile
  get 'sessions/logout','sessions#destroy'
  get 'pages/posts/:link',to:'pages#posts'
  get 'pages/posts',to:'pages#posts'
  post '/comment',to:'pages#comment',as:'comment' # user posts the message/comment
  get  'pages/delete/:id' ,to:'pages#delete',as:'pages_delete'
  post 'posts/like/:post',to:'posts#like',as:'posts_like'
post 'posts/usercomment',to:'posts#usercomment'
  post 'posts/unlike/:post',to:'posts#unlike',as:'posts_unlike'
  post 'posts/comment/:title/:content',to:'posts#comment',as:'posts_comment'
  resources :users
  resources :posts
end
