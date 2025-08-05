require "test_helper"

class VinylsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vinyls_index_url
    assert_response :success
  end

  test "should get show" do
    get vinyls_show_url
    assert_response :success
  end

  test "should get new" do
    get vinyls_new_url
    assert_response :success
  end

  test "should get create" do
    get vinyls_create_url
    assert_response :success
  end
end
