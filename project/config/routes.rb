Rails.application.routes.draw do

  resources :users, only: [:create, :destroy, :index, :show, :update]

  resources :contacts, only: [:create, :destroy, :show, :update]

  resources :contact_shares, only: [:create, :destroy]

  resources :comments, only: [:create, :destroy]

  get 'users/:user_id/contacts', to: 'contacts#index'
  # get 'users/:user_id/authored_comments', to: 'comments#index'
  # get 'contacts/:contact_id/comments', to: 'comments#show_contact'
  # get 'users/:user_id/comments', to: 'comments#show_user'

  # get 'users', to: 'users#index'
  # post 'users', to: 'users#create'
  # get 'users/new', to: 'users#new'
  # get 'users/:id/edit', to: 'users#edit'
  # get 'users/:id/', to: 'users#show'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

end
