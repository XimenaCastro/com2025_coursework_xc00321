require 'test_helper'

class CountriesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do

  setup do
  @country = countries(:one)
  end

  #test Indexing
  test "Should get index" do
    get countries_url
    assert_response :success
  end

  #Test new country
  test "Should get new" do
    get new_country_url
    assert_response :success
  end

  #Test create an country
  test "should create country" do
    assert_difference('Country.count') do
      post countries_url, params: { country: { name: @country.name, description: @country.description, link: @country.link}}
    end
    assert_redirected_to countries_url
  end

  #Test show the country
  test "Should show the country" do
   get country_url(@country)
    assert_response :success
  end

  #test destroy country
  test "Should delete (destroy) the country" do
    assert_difference('Country.count', -1) do
      delete country_url(@country)
    end
    assert_redirected_to countries_url
  end
end
