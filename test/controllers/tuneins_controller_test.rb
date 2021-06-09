require "test_helper"

class TuneinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tunein = tuneins(:one)
  end

  test "should get index" do
    get tuneins_url, as: :json
    assert_response :success
  end

  test "should create tunein" do
    assert_difference('Tunein.count') do
      post tuneins_url, params: { tunein: { artist: @tunein.artist, time: @tunein.time, title: @tunein.title } }, as: :json
    end

    assert_response 201
  end

  test "should show tunein" do
    get tunein_url(@tunein), as: :json
    assert_response :success
  end

  test "should update tunein" do
    patch tunein_url(@tunein), params: { tunein: { artist: @tunein.artist, time: @tunein.time, title: @tunein.title } }, as: :json
    assert_response 200
  end

  test "should destroy tunein" do
    assert_difference('Tunein.count', -1) do
      delete tunein_url(@tunein), as: :json
    end

    assert_response 204
  end
end
