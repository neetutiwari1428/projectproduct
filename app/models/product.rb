class Product < ApplicationRecord
  belongs_to :categorie
  has_many :productimage
  mount_uploader :image, ImageUploader
  validates :name,:price ,presence: true
  # enum :status, { active: 1, draft: 2, inactive: 0},_default: :draft
end
