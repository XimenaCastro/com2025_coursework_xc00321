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
      country = Country.new
      country.name= 'Iceland'
      country.description= 'Beautiful Country'
      country.link= 'Learn More about Iceland'

      country.save
      assert country.valid?
    end

# assert not true
  test "Should not save countries with no name" do
    country = Country.new
    country.name= ''
    country.description= 'Beautiful Country'
    country.link= 'Learn More about Iceland'

    country.save
    refute country.valid?
  end

  test "Should not save countries with no description" do
    country = Country.new
    country.name= 'Iceland'
    country.description= ''
    country.link= 'Learn More about Iceland'

    country.save
    refute country.valid?
  end

  test "Should not save countries with no link" do
    country = Country.new
    country.name= 'Iceland'
    country.description= 'Beautiful Country'
    country.link= ''

    country.save
    refute country.valid?
  end
end
