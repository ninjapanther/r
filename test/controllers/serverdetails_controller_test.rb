require 'test_helper'

class ServerdetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @serverdetail = serverdetails(:one)
  end

  test "should get index" do
    get serverdetails_url
    assert_response :success
  end

  test "should get new" do
    get new_serverdetail_url
    assert_response :success
  end

  test "should create serverdetail" do
    assert_difference('Serverdetail.count') do
      post serverdetails_url, params: { serverdetail: { cpu: @serverdetail.cpu, disk: @serverdetail.disk, process: @serverdetail.process, servername: @serverdetail.servername } }
    end

    assert_redirected_to serverdetail_url(Serverdetail.last)
  end

  test "should show serverdetail" do
    get serverdetail_url(@serverdetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_serverdetail_url(@serverdetail)
    assert_response :success
  end

  test "should update serverdetail" do
    patch serverdetail_url(@serverdetail), params: { serverdetail: { cpu: @serverdetail.cpu, disk: @serverdetail.disk, process: @serverdetail.process, servername: @serverdetail.servername } }
    assert_redirected_to serverdetail_url(@serverdetail)
  end

  test "should destroy serverdetail" do
    assert_difference('Serverdetail.count', -1) do
      delete serverdetail_url(@serverdetail)
    end

    assert_redirected_to serverdetails_url
  end
end
