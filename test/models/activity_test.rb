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
    country = Country.new(name: 'Hi', description: 'Bye', link: 'Link to activities')
    country.save
    activity = Activity.new(name: 'Xim', description: 'Your trip sounds awesome')
    activity.save
    activity = Activity.new(name: 'Xim', description: 'Your trip sounds awesome')
    assert activity.save
  end
# assert not true
  test "Should not save activities with no name" do
    country = Country.new(name: 'Hi', description: 'Bye', link: 'Link to activities')
    country.save
    activity = Activity.new(name: 'Xim', description: 'Your trip sounds awesome')
    activity.save
    activity = Activity.new(name: '', description: 'Your trip sounds awesome')
    refute activity.valid?
  end

  test "Should not save with no description" do
    country = Country.new(name: 'Hi', description: 'Bye', link: 'Link to activities')
    country.save
    activity = Activity.new(name: 'Xim', description: 'content')
    activity.save
    activity = Activity.new(name: 'Xim', description: '')
    refute activity.valid?
  end
end
