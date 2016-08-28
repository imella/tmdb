class Movie < ApplicationRecord
  validates :name, :slug, :year, :description
end
