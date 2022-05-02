Rails.application.routes.draw do
  resources :tastes
  resources :posts

  get 'posts', to: 'posts#index'
  post 'posts', to: 'posts#create'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id/edit', to: 'posts#edit'
  get 'posts/:id', to: 'posts#show'
  put 'posts/:id', to: 'posts#update'
  patch 'posts/:id', to: 'posts#update'
  delete 'posts/:id', to: 'posts#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
