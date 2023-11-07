class UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
    @post_images = @user.post_image 
    #アソシエーションを持っているモデル同士の記述
    #個人が投稿した全てを
  end

  def edit
  end
end
