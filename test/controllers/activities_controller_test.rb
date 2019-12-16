require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  setup do
  @activity = countries(:one)
  end
  #test Indexing
  test "Should get index" do
    get activities_url
    assert_response :success
  end

  #Test new activity
  test "Should get new" do
    get new_activity_url
    assert_response :success
  end

  #Test create an activity
  test "should create activity" do
    assert_difference('Activity.count') do
      post activities_url, params: { activity: { name: @activity.name, description: @activity.description }}
    end
    assert_redirected_to activities_url
  end

  #Test show the activity
  test "Should show the activity" do
   get activity_url(@activity)
    assert_response :success
  end

  #test destroy activity
  test "Should delete (destroy) the activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity)
    end
    assert_redirected_to activities_url
  end
end
