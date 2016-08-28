# Actor model class
# Columns
# id        - integer
# name      - string
# slug      - string
# birthdate - date
# bio       - text
class Actor < ApplicationRecord
  validates :name, :slug, :birthdate, :bio, presence: true
end
