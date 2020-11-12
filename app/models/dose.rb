class Dose < ApplicationRecord
  validates :description, presence: true
  # the _id is implied
  validates :ingredient, uniqueness: { scope: :cocktail }
  # validates [:cocktail, :ingredient], uniqueness: true
  belongs_to :ingredient
  belongs_to :cocktail
end
