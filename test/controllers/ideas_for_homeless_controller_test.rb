require 'test_helper'

class IdeasForHomelessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ideas_for_homeless_index_url
    assert_response :success
  end

  test "should get create" do
    get ideas_for_homeless_create_url
    assert_response :success
  end

  test "should get show" do
    get ideas_for_homeless_show_url
    assert_response :success
  end

  test "should get new" do
    get ideas_for_homeless_new_url
    assert_response :success
  end

  test "should get update" do
    get ideas_for_homeless_update_url
    assert_response :success
  end

  test "should get delete" do
    get ideas_for_homeless_delete_url
    assert_response :success
  end

end
