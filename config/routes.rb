Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"  #サイトのルートページを決める記述
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]

  get 'homes/about' => 'about#index'
  get '/about' => 'about#index' ,as: 'about'
end
