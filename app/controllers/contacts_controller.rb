class ContactsController < ApplicationController


	#method for create a new contact form
	def contacts
	end

	#Method for after the contact has been made
	def request_contacts
		name = params[:name]							
		email = params[:email]
		telephone = params[:telephone]
		message = params[:message]
		if email.blank?
		flash[:alert] = I18n.t('request_contacts.no_email')
		else
			ContactMailer.contact_email(email, name, telephone, message).deliver_now
		# Send an email
		flash[:notice] = I18n.t('request_contacts.email_sent')
		end
		redirect_to root_path


	end
end
