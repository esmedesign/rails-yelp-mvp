class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name,:address,:category,:phone_number, presence: true
  validates :category, acceptance: { accept: CATEGORIES }

end
