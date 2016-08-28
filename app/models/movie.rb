# Movie Model Class
# Columns
# name        - string
# slug        - string
# year        - integer
# description - text
# image_path  - string
class Movie < ApplicationRecord
  validates :name, :slug, :year, :description
end
