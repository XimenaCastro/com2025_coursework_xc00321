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
        activity = Activity.new(name: 'Xim', description: 'Your trip sounds awesome')
        country = Country.new(name: 'Hi', description: 'Bye', link: 'Link to activities')
        country.activity = country
        assert activity.save
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
