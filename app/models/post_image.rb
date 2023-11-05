class PostImage < ApplicationRecord

  has_one_attaced :image
  belongs_to :user #imegeにはuser情報に属する
end
