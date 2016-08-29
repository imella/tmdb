class ActorsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get actors_url
    assert_response :success
  end

  test 'should get show' do
    actor = actors(:one)
    get actor_url(actor)
    assert_response :success
  end
end
