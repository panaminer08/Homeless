require 'test_helper'

class PersonalStoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personal_stories_index_url
    assert_response :success
  end

  test "should get create" do
    get personal_stories_create_url
    assert_response :success
  end

  test "should get new" do
    get personal_stories_new_url
    assert_response :success
  end

  test "should get update" do
    get personal_stories_update_url
    assert_response :success
  end

  test "should get show" do
    get personal_stories_show_url
    assert_response :success
  end

  test "should get delete" do
    get personal_stories_delete_url
    assert_response :success
  end

end
