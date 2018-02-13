Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'articles/new'
  # Home
  root 'articles#index'
   # Create (new/create)
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles', to: 'articles#create'
  # Read (index/show)
  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: 'show'
end
