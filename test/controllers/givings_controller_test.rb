require 'test_helper'

class GivingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get givings_index_url
    assert_response :success
  end

  test "should get create" do
    get givings_create_url
    assert_response :success
  end

  test "should get new" do
    get givings_new_url
    assert_response :success
  end

  test "should get show" do
    get givings_show_url
    assert_response :success
  end

  test "should get update" do
    get givings_update_url
    assert_response :success
  end

  test "should get delete" do
    get givings_delete_url
    assert_response :success
  end

  test "should get edit" do
    get givings_edit_url
    assert_response :success
  end

end
