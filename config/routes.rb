Rails.application.routes.draw do
  devise_for :users
  get 'homes/about' => 'about#index'
  root to: "homes#top"  #サイトのルートページを決める記述
end
