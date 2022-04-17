class Item < ApplicationRecord
  validates :name,                   presence: true
  validates :info,                   presence: true
  validates :category_id,            presence: true
  validates :sales_status_id,        presence: true
  validates :shipping_fee_status_id, presence: true
  validates :prefecture_id,          presence: true
  validates :scheduled_delivery_id,  presence: true
  validates :price,                  presence: true
  validates :category_id,            numericality: { other_than: 0, message: "can't be blank" }
  validates :sales_status_id,        numericality: { other_than: 0, message: "can't be blank" }
  validates :shipping_fee_status_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :prefecture_id,          numericality: { other_than: 0, message: "can't be blank" }
  validates :scheduled_delivery_id,  numericality: { other_than: 0, message: "can't be blank" }

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture_id
  belongs_to :scheduled_delivery_id

  
  
end
 