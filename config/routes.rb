Rails.application.routes.draw do

  get 'information/top' => 'information#top'
  get 'blogs/index' => 'blogs#index'
  resources :blogs
  get 'blogs/:id' =>'blogs#show'
  post 'blogs/:id/destroy' => 'blogs/#destroy'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/:id' =>"users#show"
  get 'information/top' => 'information#top'
  get '/' => 'home#top'
end
