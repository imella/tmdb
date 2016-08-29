require 'test_helper'

class ActorTest < ActiveSupport::TestCase
  test 'should have a valid fixture' do
    actor = actors(:one)
    assert actor.valid?
  end

  test 'should validate presence of all required attributes' do
    actor = Actor.new name: 'Name'
    assert_not actor.valid?
  end
end
