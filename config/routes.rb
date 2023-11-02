Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"  #サイトのルートページを決める記述
end
