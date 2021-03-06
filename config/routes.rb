Rails.application.routes.draw do
  devise_for :users
  root 'blogs#index'
  get 'blogs/new' => 'blogs#new'
  post 'blogs' => 'blogs#create'
  delete 'blogs/:id' => 'blogs#destroy'
  get 'blogs/:id' => 'blogs#edit'
  patch 'blogs/:id'  => 'blogs#update'
end
