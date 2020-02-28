class Project < ApplicationRecord
  # Validations
  validates :title, presence: true
  validates :content, presence: true

  # Relations
  has_one_attached :image
end
