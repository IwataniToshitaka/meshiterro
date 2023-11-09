class PostImagesController < ApplicationController
  def new
    @post_image = PostImage.new #PostImageによって再生される空のモデル
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id #user_idは誰の投稿かユーザIDで判断するためのカラム
    @post_image.save
    redirect_to post_images_path
  end

  def index
    @post_images = PostImage.all

  end

  def show
    @post_image = PostImage.find(params[:id])
    @post_comment = PostComment.new
  end
  
  def destroy
    post_image = 削除するPostImageレコードを取得
    post_image.削除
    redirect_to PostImageの一覧ページへのパス
  end
  
  #投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
