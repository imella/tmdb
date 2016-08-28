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
end
