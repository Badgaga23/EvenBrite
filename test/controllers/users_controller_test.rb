require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
=======
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
  test "should get show" do
    get users_show_url
    assert_response :success
  end

<<<<<<< HEAD
=======
  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get create" do
    get users_create_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get destroy" do
    get users_destroy_url
    assert_response :success
  end

>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
end
