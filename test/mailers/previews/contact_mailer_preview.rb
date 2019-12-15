# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

def contact_email
	ContactMailer.contact_email("xim@me.com", "Ximena Castro", "03042001", @message= "Hello")
end
end
