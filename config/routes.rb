Rails.application.routes.draw do
  get 'top_pages/home'
  get 'posts/new', to: 'posts#new'
  get 'posts', to: 'posts#index'
  get 'posts/:id', to: 'posts#show'
  post 'posts', to: 'posts#create'
end