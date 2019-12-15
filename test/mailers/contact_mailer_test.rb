require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  test "should return contact email" do
  	mail = ContactMailer.contact_email("xim@me.com", "Ximena Castro", "03042001", @message ="Hello")
  #   assert true

  assert_equal ['xc00321@surrey.ac.uk'], mail.to
  assert_equal ['info@planeahead.com'], mail.from
  end
end
