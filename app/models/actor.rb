# Actor model class
# Columns
# id          - integer
# name        - string
# slug        - string
# birthdate   - date
# bio         - text
# image_path  - string
class Actor < ApplicationRecord
  validates :name, :slug, :birthdate, :bio, presence: true
  validates :slug, uniqueness: true

  has_many :movie_actors
  has_many :movies, through: :movie_actors
end
