# Join model between actors and movies
class MovieActor < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
end
