require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test 'should have a valid fixture' do
    movie = movies(:one)
    assert movie.valid?
  end

  test 'should validate presence of required attributes' do
    movie = Movie.new name: 'Name'
    assert_not movie.valid?
  end
end
