require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get title" do
    get tasks_title_url
    assert_response :success
  end

  test "should get details" do
    get tasks_details_url
    assert_response :success
  end

  test "should get completed" do
    get tasks_completed_url
    assert_response :success
  end

end
