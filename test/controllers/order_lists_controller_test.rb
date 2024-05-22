require "test_helper"

class OrderListsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get order_lists_new_url
    assert_response :success
  end

  test "should get create" do
    get order_lists_create_url
    assert_response :success
  end

  test "should get edit" do
    get order_lists_edit_url
    assert_response :success
  end

  test "should get update" do
    get order_lists_update_url
    assert_response :success
  end
end
