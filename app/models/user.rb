class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :post_images, dependent: :destroy
  #1:Nの構想　ユーザ情報が削除された場合それに紐づく全てのimageが削除される

  has_one_attached :profile_image
  has_many :post_images, dependent: :destroy #has_manyで使えるオプション
  has_many :post_comments, dependent: :destroy  #1:Nにおいて1が削除された場合、Nも一緒に
  has_many :favorites, dependent: :destroy

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width,height]).processed
  end
end
