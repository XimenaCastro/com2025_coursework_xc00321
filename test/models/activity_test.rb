require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty activity" do
    	activity = Activity.new
      activity.save
      refute activity.valid?
  end
  #   assert true
  test "Activities should have name and description" do
      #activity = Activity.new(name: 'Hike', description: 'We went hiking in Iceland').save
      activity = Activity.new
      #assert_includes Activity.new(name: 'Hike', description: 'We went hiking in Iceland').save

      activity.name= 'Hike'
      activity.description= 'Went hiking in Iceland'

      activity.save
      assert @activity.valid?
    end

# assert not true
  test "Should not save activities with no name" do
      assert_not  Activity.new(description: 'We went hiking in Iceland').save
    end

  test "Should not save activities with no description" do
      assert_not Activity.new(name: 'Hike').save
  end
      # end
end
