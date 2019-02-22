class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :photo, :description, presence: true
  validates :name, presence: true, uniqueness: true
end
