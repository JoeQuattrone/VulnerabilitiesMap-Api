require 'test_helper'

class IpAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ip_address = ip_addresses(:one)
  end

  test "should get index" do
    get ip_addresses_url, as: :json
    assert_response :success
  end

  test "should create ip_address" do
    assert_difference('IpAddress.count') do
      post ip_addresses_url, params: { ip_address: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show ip_address" do
    get ip_address_url(@ip_address), as: :json
    assert_response :success
  end

  test "should update ip_address" do
    patch ip_address_url(@ip_address), params: { ip_address: {  } }, as: :json
    assert_response 200
  end

  test "should destroy ip_address" do
    assert_difference('IpAddress.count', -1) do
      delete ip_address_url(@ip_address), as: :json
    end

    assert_response 204
  end
end
