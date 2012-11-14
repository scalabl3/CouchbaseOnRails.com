require 'test_helper'

class MainAppControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get server" do
    get :server
    assert_response :success
  end

  test "should get libcouchbase" do
    get :libcouchbase
    assert_response :success
  end

  test "should get gems" do
    get :gems
    assert_response :success
  end

  test "should get first_model" do
    get :first_model
    assert_response :success
  end

end
