class Category < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :category_records, dependent: :delete_all
  has_many :records, through: :category_records, dependent: :delete_all
end
