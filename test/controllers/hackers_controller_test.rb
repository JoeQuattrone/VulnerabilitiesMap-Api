require 'test_helper'

class HackersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hacker = hackers(:one)
  end

  test "should get index" do
    get hackers_url, as: :json
    assert_response :success
  end

  test "should create hacker" do
    assert_difference('Hacker.count') do
      post hackers_url, params: { hacker: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show hacker" do
    get hacker_url(@hacker), as: :json
    assert_response :success
  end

  test "should update hacker" do
    patch hacker_url(@hacker), params: { hacker: {  } }, as: :json
    assert_response 200
  end

  test "should destroy hacker" do
    assert_difference('Hacker.count', -1) do
      delete hacker_url(@hacker), as: :json
    end

    assert_response 204
  end
end
