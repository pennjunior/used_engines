require "test_helper"

class EnginesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get engines_index_url
    assert_response :success
  end

  test "should get show" do
    get engines_show_url
    assert_response :success
  end

  test "should get new" do
    get engines_new_url
    assert_response :success
  end

  test "should get create" do
    get engines_create_url
    assert_response :success
  end

  test "should get edit" do
    get engines_edit_url
    assert_response :success
  end

  test "should get update" do
    get engines_update_url
    assert_response :success
  end

  test "should get destroy" do
    get engines_destroy_url
    assert_response :success
  end
end
