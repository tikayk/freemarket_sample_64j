class Address < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :first_name_kana, :post_cord, :city, :address, presence: true
  validates :post_cord, length: {is: 8}
  

  # active_hashのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
