Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  
  root 'users#index'
  # Defines the root path route ("/")
  get '/users', to: 'users#index'

  # Routes for creating a new post
get '/users/:user_id/posts/new', to: 'posts#new', as: 'new_user_post'
post '/users/:user_id/posts', to: 'posts#create', as: 'user_posts_create'

# Routes for creating a new comment
get '/users/:user_id/posts/:post_id/comments/new', to: 'comments#new', as: 'new_user_post_comment'
post '/users/:user_id/posts/:post_id/comments', to: 'comments#create', as: 'user_post_comments'

# Routes for creating a new like
post '/user/:user_id/posts/:post_id/likes', to: 'likes#create', as: 'user_post_likes'

  # root "articles#index"
  get '/users/:id', to: 'users#show', as: 'user'
  get '/user/:user_id/posts', to: 'posts#index', as: 'user_posts'
  get '/user/:user_id/posts/:id', to: 'posts#show', as: 'user_post'
end