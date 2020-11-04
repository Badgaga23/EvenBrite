require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get events_index_url
    assert_response :success
  end

<<<<<<< HEAD
  test "should get show" do
    get events_show_url
    assert_response :success
  end

  test "should get create" do
    get events_create_url
    assert_response :success
  end

  test "should get new" do
    get events_new_url
    assert_response :success
  end

  test "should get edit" do
    get events_edit_url
    assert_response :success
  end

=======
>>>>>>> 2a19edc3d9c721bf5ac1fbd353b42616d01da3f5
end
