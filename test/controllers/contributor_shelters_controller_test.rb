require 'test_helper'

class ContributorSheltersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contributor_shelters_index_url
    assert_response :success
  end

  test "should get new" do
    get contributor_shelters_new_url
    assert_response :success
  end

  test "should get show" do
    get contributor_shelters_show_url
    assert_response :success
  end

  test "should get create" do
    get contributor_shelters_create_url
    assert_response :success
  end

  test "should get update" do
    get contributor_shelters_update_url
    assert_response :success
  end

  test "should get delete" do
    get contributor_shelters_delete_url
    assert_response :success
  end

end
