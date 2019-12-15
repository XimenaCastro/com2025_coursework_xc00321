require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get contact" do
  	get contact_url

  #   assert true
  assert_response :success
  assert_template layout: 'application'
  #assert_select'title', 'My Notes'assert_select'h1', 'Contact Us'
  #assert_select'p', 'Complete the following form to get in touch with us

  # end
	end

  test "should post request contact but not email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]#
  end

  test "should post request contact" do
    post request_contact_url, params:
      {name: "Ximena", email: "xim@me.com", telephone: "03042001", message: "hey"}

      assert_response :redirect
      assert_nil flash[:alert]
      assert_not_empty flash[:notice]
    end
end
