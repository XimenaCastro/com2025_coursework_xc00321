require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  test "Should not create empty Country" do
      country = Country.new
      country.save
      refute country.valid?
  end
  #   assert true
  test "Countries should have name, description and a link" do
      #activity = Activity.new(name: 'Hike', description: 'We went hiking in Iceland').save
      country = Country.new
      #assert_includes Activity.new(name: 'Hike', description: 'We went hiking in Iceland').save

      country.name= 'Iceland'
      country.description= 'Beautiful Country'
      country.link= 'Learn More about Iceland'

      country.save
      assert country.valid?
    end

# assert not true
  test "Should not save countries with no name" do
      assert_not Country.new(description: 'Your trip sounds awesome').save
    end

  test "Should not save countries with no description" do
      assert_not Country.new(name: 'Iceland').save
  end

  test "Should not save countries with no link" do
      assert_not Country.new(link: 'Activities available here').save
  end

  # end
end
