Rails.application.routes.draw do
  root to: "homes#top"  #サイトのルートページを決める記述
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get 'homes/about' => 'about#index'
  get '/about' => 'about#index' ,as: 'about'
end
