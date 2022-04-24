class Item < ApplicationRecord
  validates :image,                  presence: true
  validates :name,                   presence: true
  validates :info,                   presence: true
  validates :category_id,            presence: true
  validates :sales_status_id,        presence: true
  validates :shipping_fee_status_id, presence: true
  validates :prefecture_id,          presence: true
  validates :scheduled_delivery_id,  presence: true
  validates :price,                  presence: true,
                                     numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, allow_blank: true }, format: { with: /\A[0-9]+\z/, allow_blank: true }

  validates :category_id,            numericality: { other_than: 0, message: "can't be blank" }
  validates :sales_status_id,        numericality: { other_than: 0, message: "can't be blank" }
  validates :shipping_fee_status_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :prefecture_id,          numericality: { other_than: 0, message: "can't be blank" }
  validates :scheduled_delivery_id,  numericality: { other_than: 0, message: "can't be blank" }

  belongs_to :user
  has_one :order
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery
end
