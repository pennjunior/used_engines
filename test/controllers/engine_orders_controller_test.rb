require "test_helper"

class EngineOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get engine_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get engine_orders_create_url
    assert_response :success
  end
end
