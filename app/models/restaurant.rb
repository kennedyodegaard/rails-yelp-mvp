class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORY}, presence: true

  has_many :reviews, dependent: :destroy
end
