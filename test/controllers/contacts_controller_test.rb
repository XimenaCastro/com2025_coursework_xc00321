require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  test "should get contact" do 
  	get contact_url

  #   assert true
  assert_response:success
  assert_templatelayout: 'application'
  #assert_select'title', 'My Notes'assert_select'h1', 'Contact Us'
  #assert_select'p', 'Complete the following form to get in touch with us
  
  # end
	end
end
