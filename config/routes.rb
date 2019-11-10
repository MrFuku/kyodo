Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get 'users/:id' => 'users#show'
  get 'signup' => 'users#new'
  get 'users/:id/edit' => 'users#edit'
  post 'users/:id/update' => 'users#update'
  post 'users/create' => 'users#create'
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'

  get '/' => 'home#top'
  get '/about' => 'home#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
