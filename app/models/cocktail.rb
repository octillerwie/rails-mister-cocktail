class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :reviews
  has_one_attached :photo
  # accepts_nested_attributes_for :doses
end
