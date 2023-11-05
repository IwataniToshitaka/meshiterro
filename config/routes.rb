Rails.application.routes.draw do
  devise_for :users
  get 'homes/about' => 'about#index'
  get '/about' => 'about#index' ,as: 'about'
  root to: "homes#top"  #サイトのルートページを決める記述
end
