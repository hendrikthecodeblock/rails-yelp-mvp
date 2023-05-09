class Restaurant < ApplicationRecord
  # has_many :reviews, dependant: :destroy
  validates :name, :address, :category, presence: true
  validates :category, exclusion: {in: %w(neptunian), message: "%{value} is not allowed."}
end
