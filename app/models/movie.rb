# Movie Model Class
# Columns
# id          - integer
# name        - string
# slug        - string
# year        - integer
# description - text
# image_path  - string
class Movie < ApplicationRecord
  validates :name, :slug, :year, :description, presence: true
  validates :slug, uniqueness: true

  has_many :movie_actors
  has_many :actors, through: :movie_actors
end
