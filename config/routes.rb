Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"  #サイトのルートページを決める記述
  get 'homes/about' => 'homes#about', as: "about"
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
end
