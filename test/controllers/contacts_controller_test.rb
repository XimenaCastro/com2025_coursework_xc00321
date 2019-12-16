require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  # test to get the contacts
  test "should get contact" do
  	get contacts_url

  #   assert true
  assert_response :success
  assert_template layout: 'application'

	end

#Test user input the email in contact form
  test "should post request contact but not email" do
    post request_contacts_url
    assert_response :redirect
    #assert not empty
    assert_not_empty flash[:alert]
    #assert not true
    assert_nil flash[:notice]
  end

#Test to request form
  test "should post request contact" do
    post request_contacts_url, params:
      {name: "Ximena", email: "xim@me.com", telephone: "03042001", message: "hey"}

      assert_response :redirect

      #assert not true
      assert_nil flash[:alert]
      #assert not empty
      assert_not_empty flash[:notice]
    end
end
